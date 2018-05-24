import React from 'react'
import * as SUI from 'semantic-ui-react'
import firebase from '../../../scripts/firebase'
import { Redirect } from 'react-router-dom'

class MakeAccount extends React.Component {

    state = {
        successful: false,
        email: '',
        password: '',
        passwordConfirm: '',
        emailErrMsg: '',
        agree: false
    }

    changeEmail = (e) => this.setState({ email: e.target.value, emailErrMsg: '' })
    changePassword = (e) => this.setState({ password: e.target.value })
    changePassword2 = (e) => this.setState({ passwordConfirm: e.target.value })
    toggleAgree = () => this.setState({ agree: !this.state.agree })
    
    isEmailValid = () => (this.state.email.includes('@'))
    isPwLongEnough = () => (this.state.password.length >= 6)
    doesPwMatch = () => (this.state.password === this.state.passwordConfirm)
    
    isValid = () => this.isEmailValid() && this.isPwLongEnough() && this.doesPwMatch()

    submit = () => {
        if(!this.isEmailValid()) {
            this.setState({ emailErrMsg: 'Invalid email' })
        }
        if(this.isValid()){
            firebase.auth().createUserWithEmailAndPassword(this.state.email, this.state.password)
                .then( () => this.setState({ successful: true}))
                .catch(function(error) {
                // Handle Errors here.
                    this.setState({ emailErrMsg: error.message, successful:false })
                    console.log(error)
                })
        } 
    }

    render(){
        if(this.state.successful) return <Redirect to='/UserDashboard'/>
        return(
            <div>
                <SUI.Grid className="vertically padded centered" container>

                    <SUI.Grid.Column width='7'>
                        <SUI.Form>
                            <SUI.Form.Field error={!!this.state.emailErrMsg}> 
                                <SUI.Form.Input value={this.state.email} onChange={this.changeEmail} label='E-mail'/>
                                {this.state.emailErrMsg ? <SUI.Message negative content={this.state.emailErrMsg} /> : null} 
                            </SUI.Form.Field>
        
                            <SUI.Form.Field error={ !this.isPwLongEnough() }> 
                                <SUI.Form.Input value={this.state.password} onChange={this.changePassword} label='password' type='password'/>
                                {!this.isPwLongEnough() ? <SUI.Message negative content="Password not long enough" /> : null} 
                            </SUI.Form.Field>
        
                            <SUI.Form.Field error={ !this.doesPwMatch() }> 
                                <SUI.Form.Input value={this.state.passwordConfirm} onChange={this.changePassword2} label='confirm password' type='password'/>
                                {!this.doesPwMatch() ? <SUI.Message negative content="Password does not match" /> : null} 
                            </SUI.Form.Field>  
        
                            <SUI.Form.Field control={SUI.Checkbox} checked={this.state.agree} onClick={this.toggleAgree} label='I agree to the Terms and Conditions' />
                            <SUI.Button onClick={this.submit}>Submit</SUI.Button>
                        </SUI.Form>
                    </SUI.Grid.Column>
                </SUI.Grid>
            </div>
        )
    }
}

export default MakeAccount
