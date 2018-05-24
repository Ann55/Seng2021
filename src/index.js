import React from 'react'
import ReactDOM from 'react-dom'
import 'semantic-ui-css/semantic.min.css'
import './index.css'
import App from './views/Routes'
import { unregister } from './scripts/registerServiceWorker'

ReactDOM.render(<App />, document.getElementById('root'))
unregister()
