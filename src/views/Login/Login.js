import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../common/Padding'
import { userData } from '../../data/fakedata'

export default class Login extends React.Component {
    state = {
        username: "",
        password: "",
        authError: "",
    }
    
    handleUsernameInput = (e) => this.setState({ username: e.target.value })
    handlePasswordInput = (e) => this.setState({ password: e.target.value })
    

    authenticate = () => {
        console.log(this.state.username)
        console.log(this.state.password)
        const user = userData.find(d => d.userName === this.state.username && d.password === this.state.password)
        console.log(user)
        if (user) {
            this.setState({ authError: "" })
            this.props.login()
            this.props.history.push("/UserDashboard")
        }else{
            this.setState({ authError: "Unlucky" })
        }
     }

     render(){
         console.log(this.props)
         return(

            <SUI.Grid  className="vertically padded centered" container>

                <SUI.Grid.Column width='7'>
                    <SUI.Form className="ui large form">
                        <SUI.Form.Field >
                            <SUI.Form.Input
                                value={this.state.userName}
                                onChange={this.handleUsernameInput}
                                iconPosition="left"
                                icon="user"
                                placeholder='Username/Email'
                                error={!!this.state.authError}
                            />
                        </SUI.Form.Field>

                        <SUI.Form.Field>
                            <SUI.Form.Input
                                value={this.state.password}
                                onChange={this.handlePasswordInput}
                                iconPosition="left"
                                icon="lock"
                                placeholder='Password'
                                type="password"
                                error={!!this.state.authError}

                            />
                        </SUI.Form.Field>

                        <SUI.Form.Field>
                            <SUI.Button className="ui fluid button" onClick={this.authenticate}>login </SUI.Button >
                        </SUI.Form.Field>
                    </SUI.Form> 
                    <Padding/>
                    <SUI.Message attached='bottom'>
                        <p>New to us? &nbsp;<a href='#'>Make an account</a>&nbsp;</p>
                        <p>&nbsp;<a href='/ForgotPassword'>Forgot your password?</a>&nbsp;</p>
                    </SUI.Message>

                </SUI.Grid.Column>
            </SUI.Grid>
         ) 
    }
}