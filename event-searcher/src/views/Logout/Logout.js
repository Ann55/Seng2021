import React from 'react'

export default class Logout extends React.Component {
    componentWillMount() {
        this.props.logout()
    }

    render() {
        return (
            <h2> You have logged out </h2>
        )
    }
}
