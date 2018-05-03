import React, { Component } from 'react'
import './Routes.css'
import 'react-virtualized/styles.css'
import UserDashboard from './UserDashboard/UserDashboard'
import Login from './Login/Login'
import Forgot from './Forgot/Forgot'
import Header from './Header/Header'
import { BrowserRouter, Route } from 'react-router-dom'
import Search from './Search/Search';
import Logout from './Logout/Logout'
import Detail from './Detail/Detail'
import Welcome from './Welcome/Welcome'
import Calendar from './Calendar/Calendar';

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
          <Route exact path="/" component={Welcome} />
          <Route path="/UserDashboard" render={() => <UserDashboard isLoggedIn={this.state.login} />} />
          <Route path="/Search" component={Search} />
          <Route path ="/ForgotPassword" component={Forgot} />
          <Route path="/login" render={(routeProps) => <Login login={this.login} {...routeProps}/> } />
          <Route path ="/Logout" render={() => <Logout logout={this.logout}/>} />
          <Route path ="/Detail/:id" component={Detail} />
          <Route path="/Calendar" component={Calendar} />

        </div>
      </BrowserRouter>
    )
  }
}

export default App
