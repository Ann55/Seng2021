import React from 'react'
import * as SUI from 'semantic-ui-react'

const Save = props => (
    <SUI.Icon style={{ cursor: 'pointer' }} name={props.value ? 'heart' : 'empty heart'} onClick={props.toggleSaved} />
)
export default Save