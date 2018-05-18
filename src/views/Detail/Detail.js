import React from 'react'
import * as SUI from 'semantic-ui-react'
import Image from 'react-image'
import { data } from '../../data/fakedata'
import map from '../../data/download.jpg'

const findEvent = (eventId, societies) => {
    for(const society of Object.values(societies)){
        if (society.events[eventId]) {
            return society.events[eventId]
        }
    }
    return null
}

const Detail = props => {
    const eventData = findEvent(props.match.params.id, props.societies)
    if (!eventData) {
        return <h1>Not found</h1>
    }
    console.log(eventData.societyId)
    return (
        <SUI.Grid  className=" centered" container columns={2} divided>
            <SUI.Grid.Row>
                <SUI.Grid.Column width='5'>
                    <SUI.Segment style={{ minHeight: 480 }}>
                        <p> Date: {eventData.dateStart.format('DD/MM/YY - H:mm')} - {eventData.dateEnd.format('DD/MM/YY - H:mm')}  </p>
                        <p> Going: {eventData.going}</p>
                        <p> Interested:{eventData.interested} </p>
                        <p> Location: city </p>

                        <SUI.Image src={map} />
                    </SUI.Segment>
                </SUI.Grid.Column>  

                <SUI.Grid.Column width='11'>
                    <SUI.Segment>
                        <h3>
                           {props.societies[eventData.societyId].name} - {eventData.name}
                        </h3>
                    </SUI.Segment>
                    <SUI.Segment style={{ minHeight: 410 }}>
                        <p>  
                            {eventData.about}
                        </p>


                        <SUI.Popup
                            trigger={<SUI.Icon size="big" name="facebook square" link onClick={() => window.open('https://www.facebook.com', '_blank').focus()} />}
                            content="Find out more on Facebook."
                            basic
                        />
                    </SUI.Segment>
                </SUI.Grid.Column>

            </SUI.Grid.Row>
        </SUI.Grid>
    )
}
export default Detail
