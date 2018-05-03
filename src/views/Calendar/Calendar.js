import React from 'react'
import BigCalendar from 'react-big-calendar'
import moment from 'moment'

BigCalendar.setLocalizer(BigCalendar.momentLocalizer(moment))
import { data } from '../../data/fakedata'

let allViews = Object.keys(BigCalendar.Views).map(k => BigCalendar.Views[k])

let Calendar = () => (
  <BigCalendar
    events={data}
    views={allViews}
    step={60}
    showMultiDayTimes
    defaultDate={new Date(2015, 3, 1)}
  />
)

export default Calendar