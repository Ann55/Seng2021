import React, { Component } from 'react'
import './Routes.css'
import 'react-virtualized/styles.css'
import Home from './Home/Home'
import Login from './Login/Login'
import Header from './Header/Header'
import { BrowserRouter, Route } from 'react-router-dom'
import UserDashboard from './UserDashboard/UserDashboard';

class App extends Component {
  state = {
    login: false
  }
  login = () =>this.setState({ login: true})
  logout = () =>this.setState({ login:false})

  render() {
    return (
      <BrowserRouter>
        <div className="App">
          <Header loginState={this.state.login} login={this.login} logout={this.logout}/>
          <Route exact path="/" component={Home} />
          <Route path="/login" component={Login} />
          <Route path="/Dashboard" component={UserDashboard} />

        </div>
      </BrowserRouter>
    )
  }
}

export default App
