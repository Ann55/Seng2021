import React from 'react'
import * as SUI from 'semantic-ui-react'

const ClashMessage = (props) => (
    <div>
        { props.clashes.map((events, i) => 
            <SUI.Message error key={i}>
                <p> You have a few events on at the same time: </p>
                { events.map((event, j) => <p key={j}> From: {event.dateStart.format('H:mm, DD/MM')} To: {event.dateEnd.format('H:mm, DD/MM')}: {event.name}</p> )}
            </SUI.Message>
        )}
    </div>
)
export default ClashMessage
