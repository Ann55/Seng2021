import React from 'react'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'
import { data } from '../../data/fakedata'
import 'react-big-calendar/lib/css/react-big-calendar.css'

BigCalendar.momentLocalizer(moment)

const datatataat = data.map(d => ({
  title: d.eventName,
  start: moment(d.date, 'DD-MM-YY').toDate(),
  end: moment(d.date, 'DD-MM-YY').toDate(),
}))

const Calendar = () => (
  <BigCalendar
    events={datatataat}
    style={{ height: '70vh' }}
    defaultDate={new Date()}
  />
)

export default Calendar