import React from 'react'
import * as SUI from 'semantic-ui-react'
import Image from 'react-image'
//import { data } from '../../data/fakedata'
import { data } from '../../data/UNSWSocietyFBEvents'
import map from '../../data/download.jpg'

const Detail = props => {
    const eventData = data.find(d => d.id.toString() === props.match.params.id)
    if (!eventData) {
        return <h1>Not found</h1>
    }
    return (
        <SUI.Grid  className=" centered" container columns={2} divided>
            <SUI.Grid.Row>
                <SUI.Grid.Column width='2'>
                    <SUI.Image src={eventData.cover__source} style={{ maxHeight: 70}} width="98%" />
                </SUI.Grid.Column>
                <SUI.Grid.Column width='14'>
                    <SUI.Segment style={{ minHeight: 70 }}>
                        <h2>
                            <center>{eventData.eventName}</center>
                        </h2>
                    </SUI.Segment>
                </SUI.Grid.Column>
            </SUI.Grid.Row>
            <SUI.Grid.Row>
                <SUI.Grid.Column width='7'>
                    <SUI.Segment style={{ minHeight: 480 }}>
                        
                        <a target="_blank" href={eventData.link}>{eventData.society} </a>
                        <p></p>
                        <p> Date: {eventData.date} {eventData.data__start_time}</p>
                        {eventData.going > 0 &&
                        <p> Going:  {eventData.going} </p>
                        }
                        {eventData.going <= 0 &&
                        <p> Went:  {eventData.data__went} </p>
                        }
                        <p> Interested:{eventData.interested} </p>

                        <SUI.Popup
                            trigger={<SUI.Icon size="big" name="facebook square" link onClick={() => window.open("https://www.facebook.com/" + eventData.data__id, "_blank").focus()} />}
                            content={"Find out more on Facebook.\n" + "https://www.facebook.com/" + eventData.data__id} 
                            basic
                        />

                        {eventData.data__description}

                    </SUI.Segment>
                </SUI.Grid.Column>
                <SUI.Grid.Column width='9'>
                        <SUI.Segment style={{ minHeight: 480 }}>
                        <SUI.Image src={map} height="420" />

                        <p></p>
                        <p> Location: {eventData.data__place__location__latitude},{eventData.data__place__location__longitude} </p>
                        
                    </SUI.Segment>
                </SUI.Grid.Column>
            </SUI.Grid.Row>

        </SUI.Grid>
    )
}
export default Detail
