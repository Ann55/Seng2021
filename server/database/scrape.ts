import * as fs from 'fs'
import * as puppeteer from 'puppeteer'
import { IEventData, ISocietyData } from './interfaces'

const societyIDsJSON = 'societyIDs.json'
const societyDataJSON = 'societyData.json'
const loginDetails = {
	password: 'Mnbvcx098765',
	username: 'test.tester.unsw@hotmail.com',
}

// Logs into facebook
const login = async (page: puppeteer.Page): Promise<void> => {
	console.log('going to fb...')
	await page.goto('https://facebook.com', { waitUntil: 'networkidle2' })
	await page.waitForSelector('#email')
	await page.type('#email', loginDetails.username)
	await page.type('#pass', loginDetails.password)
	await page.click('input[value="Log In"]')

	console.log('logging in...')
	await page.waitForNavigation({ waitUntil: 'networkidle2' })
}

// Searches for societies using search bar
// Scrolls to very bottom since lazyload
const loadSocietyList = async (page: puppeteer.Page): Promise<void> => {
	console.log('loading society list...')
	await page.goto('https://www.facebook.com/search/pages/?q=UNSW%20society', { waitUntil: 'networkidle2' })

	const viewportHeight = page.viewport().height
	const result = await page.$('#initial_browse_result')
	while (await page.$('#browse_end_of_results_footer') === null) {
		console.log(`loading results... (${(await result.boundingBox()).height})`)
		await page.evaluate((viewHeight) => window.scrollBy(0, viewHeight), viewportHeight)
		await page.waitFor(500)
	}
}

// Search page html to find society page ids
const findSocietyIDs = async (page: puppeteer.Page): Promise<string[]> => {
	const content = await page.content()
	let results = content.match(/https:\/\/www\.facebook\.com\/\w+\/\?ref=br_rs/g)
	results = results.map((result) => result.match(/https:\/\/www\.facebook\.com\/(\w+)\/\?ref=br_rs/)[1])
	return [...new Set(results)]
}

// Loads ids from saved json
const loadSocietyIDs = (): string[] => {
	const jsonString = fs.readFileSync(societyIDsJSON, 'utf8')
	return JSON.parse(jsonString)
}

// Saves ids to json
const saveSocietyIDs = (ids: string[]) => {
	fs.writeFileSync(societyIDsJSON, JSON.stringify(ids))
}

// Scrape society data from society page
const getSocietyData = async (browser: puppeteer.Browser, id: string): Promise<ISocietyData> => {
	console.log('Society', id)
	const url = `https://www.facebook.com/pg/${id}/events/`
	const page = await browser.newPage()
	await page.goto(url, { waitUntil: 'networkidle2' })

	await page.waitFor('#seo_h1_tag')
	const name = await page.$eval('#seo_h1_tag', (el) => el.textContent)

	const eventIDs = await findEventIDs(page)
	const events = await Promise.all(eventIDs.map((eventID) => getEventData(browser, eventID)))

	await page.close()
	return {
		events: events.filter((x) => x),
		id,
		name,
	}
}

// Finds all upcoming eventIDs from society events page
const findEventIDs = async (page: puppeteer.Page): Promise<string[]> => {
	const eventCard = await page.$('#upcoming_events_card')
	if (!eventCard) {
		return []
	}
	const eventCardHTML: string = await page.$eval('#upcoming_events_card', (el) => el ? el.innerHTML : '')
	const eventUrls = [...new Set(eventCardHTML.match(/href="\/events\/[^"]*"/g))]
	const eventIDs = eventUrls.map((url) => url.match(/\/events\/([0-9]+)\//)[1])
	return eventIDs
}

// Scrape event data from event page
const getEventData = async (browser: puppeteer.Browser, id: string): Promise<IEventData> => {
	try {
		console.log('Event', id)
		const url = `https://www.facebook.com/events/${id}/`
		const page = await browser.newPage()
		await page.goto(url, { waitUntil: 'networkidle2' })

		// Name
		await page.waitFor('#seo_h1_tag')
		const name: string = await page.$eval('#seo_h1_tag', (el) => el.textContent)

		// Date
		const date: string = await page.$eval('div._publicProdFeedInfo__timeRowTitle', (el) => el.getAttribute('content'))
		let dateStart: Date
		let dateEnd: Date
		if (date.includes(' to ')) {
			[dateStart, dateEnd] = date.split(' to ').map((d) => new Date(d))
		} else {
			dateStart = dateEnd = new Date(date)
		}

		// Description
		const about: string = await page.$('.text_exposed_show')
			? await page.$eval('.text_exposed_root', (el) => el.innerHTML) +
				await page.$eval('.text_exposed_show', (el) => el.innerHTML)
			: await page.$eval('span[data-testid="event-permalink-details"]', (el) => el.innerHTML)

		// Going/Interested
		const goingInterested: string = await page.$eval('a._5z74', (el) => el.textContent)
		const [going, interested] = goingInterested.match(/[0-9]+/g).map((n) => parseInt(n, 10))

		// Location
		const locationWrapper = await page.$('._3xd0')
		const locationTag = locationWrapper ? await locationWrapper.$('._5xhk') : null
		const location = locationTag ? await (await locationTag.getProperty('textContent')).jsonValue() : ''

		return {
			about,
			dateEnd,
			dateStart,
			going,
			id,
			interested,
			location,
			name,
			url,
		}
	} catch (err) {
		return null
	}
}

const main = async () => {
	const browser = await puppeteer.launch()
	const page = await browser.newPage()
	await login(page)

	let societyIDs: string[]
	if (fs.existsSync(societyIDsJSON)) {
		societyIDs = loadSocietyIDs()
	} else {
		await loadSocietyList(page)
		societyIDs = await findSocietyIDs(page)
		saveSocietyIDs(societyIDs)
	}

	const societyData = {}
	for (const id of societyIDs) {
		societyData[id] = await getSocietyData(browser, id)
	}

	fs.writeFileSync(societyDataJSON, JSON.stringify(societyData))

	await browser.close()
}

main()

const arraySplit = (arr: any[], size: number): any[][] => arr.reduce((total: any[][], prev: any) => {
	if (total[total.length - 1].length === size) {
		total.push([prev])
	} else {
		total[total.length - 1].push(prev)
	}
	return total
}, [[]])
