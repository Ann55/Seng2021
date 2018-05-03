import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../common/Padding'

const Login = () => (

    <SUI.Grid  className="vertically padded centered" container>

        <SUI.Grid.Column width='7'>
            <SUI.Form className="ui large form">
                <SUI.Form.Field >
                    <SUI.Input iconPosition="left" icon="user" placeholder='Username/Email'/>
                </SUI.Form.Field>

                <SUI.Form.Field>
                    <SUI.Input iconPosition="left" icon="lock" placeholder='Password' />
                </SUI.Form.Field>

                <SUI.Form.Field>
                    <SUI.Button className="ui fluid button">login </SUI.Button >
                </SUI.Form.Field>
            </SUI.Form> 
            <Padding/>
            <SUI.Message attached='bottom'>
                <p>New to us? &nbsp;<a href='#'>Make an account</a>&nbsp;</p>
                <p>&nbsp;<a href='#'>Forgot your password?</a>&nbsp;</p>

            </SUI.Message>

        </SUI.Grid.Column>
    </SUI.Grid>

  
)
export default Login