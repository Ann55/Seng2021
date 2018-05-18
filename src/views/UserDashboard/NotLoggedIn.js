import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../common/Padding'
import { Link } from 'react-router-dom'

const NotLoggedIn = () => (
    <div>
        <Padding />
        <Padding />
        <SUI.Grid.Column>
            <h3>You are not logged in, please <Link to="/Login">Log in</Link> to use this feature</h3>
        </SUI.Grid.Column>
    </div>
)
export default NotLoggedIn
