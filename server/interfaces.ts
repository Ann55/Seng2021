
export interface ISocietyData {
	id: string
	name: string
	events: IEventData[]
}

export interface IEventData {
	id: string
	url: string
	name: string
	dateStart: Date
	dateEnd: Date
	about: string
	going: number
	interested: number
	location: string
}
