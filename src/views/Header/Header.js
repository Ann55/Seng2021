import React from 'react'
import Menu from './Menu'
import Padding from '../common/Padding'
import { Link } from 'react-router-dom'
import logo from '../../data/Logo.JPG'
import * as SUI from 'semantic-ui-react'

const Header = props => (
    <div>
        <div>
            <header className="App-header">
                {/* <h1 className="App-title" >
                <Link to="/">UNSW Event Searcher</Link>
                </h1> */}
                <Link to="/">
                    <SUI.Image size="large" src={logo} />
                </Link>
            </header>
        </div>
        <Menu {...props}/>
        <div className="ui divider"></div> 
        <Padding/>
    </div>
)
export default Header
