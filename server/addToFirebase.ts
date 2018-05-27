import * as firebase from 'firebase'
import * as fs from 'fs'
import { IEventData, ISocietyData } from './interfaces'

const app = firebase.initializeApp({
	apiKey: 'AIzaSyAJ1nHNXNhWp8TqTPfEioDzgOLeCskGwx8',
	projectId: 'event-search-55',
})
const db = app.firestore()
db.settings({ timestampsInSnapshots: true })

const loadData = (): { [id: string]: ISocietyData } => {
	const jsonString = fs.readFileSync('societyData.json', 'utf8')
	return JSON.parse(jsonString)
}

const deleteOld = async () => {
	console.log('deleting existing...')
	const societySnapshot = await db.collection('society').get()
	societySnapshot.forEach(async (society) => {
		const eventSnapshot = await db.collection(`society/${society.id}/events`).get()
		eventSnapshot.forEach(async (event) => {
			await event.ref.delete()
		})
	})
}

const addNew = async (societies: ISocietyData[]) => {
	console.log('adding new...')
	await Promise.all(societies.map(async (society) => {
		await db.collection('society').doc(society.id).set({
			id: society.id,
			name: society.name,
		})
		await Promise.all(society.events.map(async (event) => {
			await db.collection('society').doc(society.id).collection('events').doc(event.id).set({
				about: event.about,
				dateEnd: new Date(event.dateEnd),
				dateStart: new Date(event.dateStart),
				going: event.going,
				id: event.id,
				interested: event.interested,
				location: event.location,
				name: event.name,
				url: event.url,
			})
		}))
	}))
}

const main = async () => {
	console.log('started')
	const societiesObj = loadData()
	const societies = Object.keys(societiesObj).map((id) => societiesObj[id]).filter((soc) => soc.events.length > 0)

	await deleteOld()
	await addNew(societies)
}

main().then(() => process.exit())
