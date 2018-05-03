import React from 'react'
import Menu from './Menu'
import Padding from '../common/Padding'

const Header = props => (
    <div>
        <header className="App-header">
            <h1 className="App-title">UNSW Event Searcher</h1>
        </header>
        <Menu {...props}/>
        <div className="ui divider"></div> 
        <Padding/>
    </div>
)
export default Header
