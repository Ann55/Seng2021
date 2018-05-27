import React from 'react'
import * as SUI from 'semantic-ui-react'
import Map from './Map'

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
    return (
        <SUI.Grid  className=" centered" container columns={2} divided>
            <SUI.Grid.Row>
                <SUI.Grid.Column width='5'>
                    <SUI.Segment style={{ minHeight: 480 }}>
                        <p> <b> Date: </b>{eventData.dateStart.format('DD/MM/YY  H:mm')} ~ {eventData.dateEnd.format('DD/MM/YY  H:mm')}  </p>
                        <p> <b> Going: </b>{eventData.going}</p>
                        <p> <b> Interested: </b>{eventData.interested} </p>
                        <p> <b> Location: </b>{eventData.location} </p>

                    <Map location={eventData.location}/>
                    </SUI.Segment>
                </SUI.Grid.Column>  

                <SUI.Grid.Column width='11'>
                    <SUI.Segment>
                        <h3>
                           {props.societies[eventData.societyId].name} - {eventData.name}
                        </h3>
                    </SUI.Segment>
                    <SUI.Segment style={{ minHeight: 410 }}>
                    <div dangerouslySetInnerHTML={{__html: eventData.about}} />
                        <br/>
                        <SUI.Popup
                            trigger={<SUI.Icon size="big" name="facebook square" link onClick={() => window.open( eventData.url ).focus()} />}
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
