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
        errMsg: '',
        agree: false
    }

    changeEmail = (e) => {
        const isValid = e.target.value.includes('@')
        const errMsg = isValid ? '' : 'YA FUCKED UP'
        this.setState({ email: e.target.value, errMsg })
    }

    changePassword = (e) => this.setState({ password: e.target.value })
    changePassword2 = (e) => this.setState({ passwordConfirm: e.target.value })

    toggleAgree = () => this.setState({ agree: !this.state.agree })
    
    isValid = () => (!this.state.errMsg && this.state.password.length > 0 && this.state.password === this.state.passwordConfirm && this.state.agree) 

    submit = () => {
        if(this.isValid()){
            firebase.auth().createUserWithEmailAndPassword(this.state.email, this.state.password)
                .then( () => this.setState({ successful: true}))
                .catch(function(error) {
                // Handle Errors here.
                    this.setState({ errMsg: error.message, successful:false })
                    console.log(error)
                })
        } 
    }

    render(){
        if(this.state.successful) return <Redirect to='/UserDashboard'/>
        return(
            <SUI.Grid className="vertically padded centered" container>

                <SUI.Grid.Column width='7'>
                    <SUI.Form>
                        <SUI.Form.Field>
                            <SUI.Form.Input value={this.state.email} onChange={this.changeEmail} label='E-mail'/>
                        </SUI.Form.Field>
    
                        <SUI.Form.Field>
                            <SUI.Form.Input value={this.state.password} onChange={this.changePassword} label='password' type='password'/>
                        </SUI.Form.Field>
    
                        <SUI.Form.Field>
                            <SUI.Form.Input value={this.state.passwordConfirm} onChange={this.changePassword2} label='confirm password' type='password'/>
                        </SUI.Form.Field>  
    
                        <SUI.Form.Field control={SUI.Checkbox} checked={this.state.agree} onClick={this.toggleAgree} label='I agree to the Terms and Conditions' />
                        <SUI.Button onClick={this.submit} disabled={!this.isValid()}>Submit</SUI.Button>
                    </SUI.Form>
                </SUI.Grid.Column>
            </SUI.Grid>
        )
    }
}

export default MakeAccount
