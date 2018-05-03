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
// import Calendar from './Calendar/Calendar';

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
          <Route path="/UserDashboard" component={UserDashboard} />
          <Route path="/login" render={() => <Login login={this.login}/> } />
          <Route path="/Search" component={Search} />
          <Route path ="/ForgotPassword" component={Forgot} />
          <Route path ="/Logout" component={Logout} />
          <Route path ="/Detail" component={Detail} />


          {/* <Route path="/Calendar" component={Calendar} /> */}

        </div>
      </BrowserRouter>
    )
  }
}

export default App
