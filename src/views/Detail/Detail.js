import React from 'react'
import * as SUI from 'semantic-ui-react'
import Image from 'react-image'
import { data } from '../../data/fakedata'
import map from '../../data/download.jpg'

const Detail = props => {
    const eventData = data.find(d => d.id.toString() === props.match.params.id)
    if (!eventData) {
        return <h1>Not found</h1>
    }
    return (
        <SUI.Grid  className=" centered" container columns={2} divided>
            <SUI.Grid.Row>
                <SUI.Grid.Column width='5'>
                    <SUI.Segment style={{ minHeight: 480 }}>
                        <p> Date: {eventData.date} </p>
                        <p> Going: {eventData.going}</p>
                        <p> Interested:{eventData.interested} </p>
                        <p> Location: city </p>

                        <SUI.Image src={map} />
                    </SUI.Segment>
                </SUI.Grid.Column>  

                <SUI.Grid.Column width='11'>
                    <SUI.Segment>
                        <h3>
                           {eventData.society} - {eventData.eventName}
                        </h3>
                    </SUI.Segment>
                    <SUI.Segment style={{ minHeight: 410 }}>
                        <p>  
                            Sample description for event imported from fb
                        </p>


                        <SUI.Popup
                            trigger={<SUI.Icon size="big" name="facebook square" link onClick={() => window.open("https://www.facebook.com", "_blank").focus()} />}
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
