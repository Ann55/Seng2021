import React from 'react'
import firebase from '../../../scripts/firebase'

export default class Logout extends React.Component {
    componentWillMount() {
        firebase.auth().signOut().catch(error => console.log(error))
    }

    render() {
        return (
            <h2> You have logged out </h2>
        )
    }
}
