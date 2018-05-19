import React from 'react'
import * as SUI from 'semantic-ui-react'

const ClashMessage = (props) => (
    <div>
        { props.clashes.map((events, i) => 
            <SUI.Message error key={i}>
                <p> You have a few events on at the same time: </p>
                { events.map((event, j) => <p key={j}>{event.name}</p> )}
            </SUI.Message>
        )}
    </div>
)
export default ClashMessage
