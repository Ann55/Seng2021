import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../common/Padding'
import { Link } from 'react-router-dom'

const AddEvents = () => (
    <div>
        <Padding />
        <Padding />
        <SUI.Grid.Column>
            <h3>Your saved events will appear here</h3>
        </SUI.Grid.Column>
    </div>
)
export default AddEvents
