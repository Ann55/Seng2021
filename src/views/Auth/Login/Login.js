import React from 'react'
import * as SUI from 'semantic-ui-react'
import Padding from '../../common/Padding'
import OGFirebase from 'firebase'
import firebase from '../../../scripts/firebase'
import { Link,Redirect } from 'react-router-dom'
import logo from '../../../data/ShortLogo.jpg'

const auth = firebase.auth()

export default class Login extends React.Component {
    state = {
        email: '',
        password: '',
        authError: '',
        isLoggedIn: false,
    }
    
    handleUsernameInput = (e) => this.setState({ email: e.target.value })
    handlePasswordInput = (e) => this.setState({ password: e.target.value })
    
    authenticateEmail = () => {
        auth.signInWithEmailAndPassword(this.state.email, this.state.password)
            .then(() => this.setState({ isLoggedIn: true}))
            .catch(error => this.setState({ authError: error.message, isLoggedIn: false }))
    }

    authenticateFb = () => {
        const provider = new OGFirebase.auth.FacebookAuthProvider()
        auth.signInWithPopup(provider)
        .then(() => this.setState({ isLoggedIn: true}))
        .catch(error => this.setState({ authError: error.message, isLoggedIn: false }))
    }
    authenticateGoogle = () => {
        const provider = new OGFirebase.auth.GoogleAuthProvider()
        auth.signInWithPopup(provider)
        .then(() => this.setState({ isLoggedIn: true}))
        .catch(error => this.setState({ authError: error.message, isLoggedIn: false }))
    }
    authenticateTwitter = () => {
        const provider = new OGFirebase.auth.TwitterAuthProvider()
        auth.signInWithPopup(provider)
        .then(() => this.setState({ isLoggedIn: true}))
        .catch(error => this.setState({ authError: error.message, isLoggedIn: false }))
    }
    render(){
        if(this.state.isLoggedIn) return <Redirect to='/UserDashboard'/>
        if(!this.state.isLoggedIn) 
        return(

            <SUI.Grid  className="vertically padded centered" container>

                <SUI.Grid.Column width='7'>
                    <SUI.Form className="ui large form">
                        <SUI.Header as='h1' textAlign='center'>
                            <SUI.Image size='big' src={logo}/>
                            {' '}Log in here
                        </SUI.Header>
                        <Padding />
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
                        {!this.state.authError ? null: <SUI.Message negative content='Incorrect password or email' />} 

                        </SUI.Form.Field>

                        <SUI.Form.Field>
                            <SUI.Button className="ui fluid button" onClick={this.authenticateEmail}>login </SUI.Button >
                        </SUI.Form.Field>
                    </SUI.Form> 
                    <Padding/>
                    <SUI.Message attached='bottom'>
                        <p>New to us? <Link to='/MakeAccount'>Make an account</Link></p>
                        <p><Link to='/ForgotPassword'>Forgot your password?</Link></p>
                    </SUI.Message>
                    <SUI.Popup
                        trigger={<SUI.Icon style={{cursor:'pointer'}} size="large" circular color="blue" name="facebook f" onClick={this.authenticateFb}/>}
                        content="Login through Facebook"
                        basic
                    />
                    <SUI.Popup
                        trigger={<SUI.Icon style={{cursor:'pointer'}} size="large" circular color="blue" name="google" onClick={this.authenticateGoogle} />}
                        content="Login through Google"
                        basic
                    />
                    <SUI.Popup
                        trigger={<SUI.Icon style={{cursor:'pointer'}} size="large" circular color="blue" name="twitter" onClick={this.authenticateTwitter} />}
                        content="Login through Twitter"
                        basic
                    />
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