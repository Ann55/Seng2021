import React from "react"
import * as SUI from "semantic-ui-react"
import AccordionWelcom from './Accordion'

const Welcome = () => (
    <SUI.Grid  className="vertically padded centered" container>
        <SUI.Grid.Column width='13'>
            <div>
                <SUI.Header as='h2' attached='top'>
                    Welcome to UNSW Event Searcher
                </SUI.Header>
                    <SUI.Segment attached>
                        <AccordionWelcom/>
                    </SUI.Segment>
            </div>
        </SUI.Grid.Column>
    </SUI.Grid>
)
export default Welcome