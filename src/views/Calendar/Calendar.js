import React from 'react'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'
import 'react-big-calendar/lib/css/react-big-calendar.css'

BigCalendar.momentLocalizer(moment)


const Calendar = (props) => {
  const events = Object.values(props.societies).reduce((total, soc) => [...total, ...Object.values(soc.events)], [])
  const formattedEvents = events.map((event) => ({
    title: event.name,
    start: event.dateStart.toDate(),
    end: event.dateEnd.toDate(),
  }))
  return(
  <BigCalendar
    events={formattedEvents}
    style={{ height: '70vh' }}
    defaultDate={new Date()}

  />
  )
}

export default Calendar