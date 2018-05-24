import React from 'react'
import * as SUI from 'semantic-ui-react'

const ErrorMsg = ({error}) => (
    <SUI.Message error>
        <p>{ error }</p>
    </SUI.Message>
)
export default ErrorMsg