import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../../common/Padding'
import firebase from '../../../scripts/firebase'
import { Link } from 'react-router-dom'

const auth = firebase.auth()

export default class Login extends React.Component {
    state = {
        email: '',
        password: '',
        authError: '',
    }
    
    handleUsernameInput = (e) => this.setState({ email: e.target.value })
    handlePasswordInput = (e) => this.setState({ password: e.target.value })
    
    authenticate = () => {
        auth.signInWithEmailAndPassword(this.state.email, this.state.password).catch(function(error) {
            this.setState({ authError: error.message })
        })      
    }

    render(){
        return(

            <SUI.Grid  className="vertically padded centered" container>

                <SUI.Grid.Column width='7'>
                    <SUI.Form className="ui large form">
                        <SUI.Form.Field >
                            <SUI.Form.Input
                                value={this.state.email}
                                onChange={this.handleUsernameInput}
                                iconPosition="left"
                                icon="user"
                                placeholder='Email'
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
                        <p>New to us? <Link to='/MakeAccount'>Make an account</Link></p>
                        <p><Link to='/ForgotPassword'>Forgot your password?</Link></p>
                    </SUI.Message>

                </SUI.Grid.Column>
            </SUI.Grid>
         ) 
    }
}

// function checkLoginState() {
//     FB.getLoginStatus(function(response) {
//       statusChangeCallback(response);
//     });
//     }
// <fb:login-button 
//   scope="public_profile,email"
//   onlogin="checkLoginState();">
// </fb:login-button>