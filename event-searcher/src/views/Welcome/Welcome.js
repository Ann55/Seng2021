import React from "react"
import * as SUI from "semantic-ui-react"

const Welcome = () => (
    <SUI.Grid className=" centered">
        <SUI.Grid.Column width='13'>
            <div>
                <SUI.Header as='h2' attached='top'>
                    Welcomee
                </SUI.Header>
                <SUI.Segment attached>
                    Event Searcher Page :DD
                </SUI.Segment>
            </div>
        </SUI.Grid.Column>
    </SUI.Grid>
)
export default Welcome