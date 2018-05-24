import React, { Component } from 'react'
import './Routes.css'
import 'react-virtualized/styles.css'
import UserDashboard from './UserDashboard/UserDashboard'
import Login from './Auth/Login/Login'
import Forgot from './Auth/Forgot/Forgot'
import Header from './Header/Header'
import { BrowserRouter, Route } from 'react-router-dom'
import Search from './Search/Search'
import Logout from './Auth/Logout/Logout'
import Detail from './Detail/Detail'
import Welcome from './Welcome/Welcome'
import Calendar from './Calendar/Calendar'
import MakeAccount from './Auth/MakeAccount/MakeAccount'
import firebase from '../scripts/firebase'
import moment from 'moment'

const db = firebase.firestore()

class App extends Component {
  state = {
    user: null,
    societies: {},
    savedEvents: {},
  }

  componentDidMount() {
    firebase.auth().onAuthStateChanged(this.handleAuthChange)
    firebase.auth().getRedirectResult().then(result => console.log(result))
    this.updateSocieties()
  }

  componentWillUnmount() {
    db.collection('society').onSnapshot(() => null)
  }

  addSavedEvent = (id) => this.setState({ savedEvents: { ...this.state.savedEvents, [id]: {saved: true} } })
  deleteSavedEvent = (id) => {
    const copy = {...this.state.savedEvents}
    delete copy[id]
    this.setState({ savedEvents: copy })
  }

  handleAuthChange = (user) => {
    if (user) {
      this.updateUserData(user)
      this.setState({ user })
    } else {
      if (this.state.user) {
        db.collection(`users/${this.state.user.uid}/saved`).onSnapshot(() => null)
      }
      this.setState({ user: null, savedEvents: {} })
    }
  }

  updateSocieties = () => {
    db.collection('society').onSnapshot(societySnapshot => {
      societySnapshot.forEach(async(society) => {
        const eventSnapshot = await db.collection(`society/${society.id}/events`).get()
        const events = {}
        eventSnapshot.forEach((event) => {
          const data = event.data()
          events[event.id] = {
            ...data,
            id: event.id,
            societyId: society.id,
            dateStart: moment(data.dateStart.toDate()),
            dateEnd: moment(data.dateEnd.toDate()),
          }
        })

        const societyObj = {
          ...society.data(),
          id: society.id,
          events,
        }

        this.setState({
          societies: {
            ...this.state.societies,
            [society.id]: societyObj,
          }
        })
      })
    })
  }

  updateUserData = (user) => {
    db.collection(`users/${user.uid}/saved`).onSnapshot(savedList => {
      const savedEvents = {}
      savedList.forEach(saved => {
        savedEvents[saved.id] = true
      })
      this.setState({ savedEvents })
    })
  }

  render() {
    return (
      <BrowserRouter>
        <div className="App">
          <Header loginState={this.state.user !== null} />
          <Route exact path="/" component={Welcome} />
          <Route path="/UserDashboard" render={() => <UserDashboard {...this.state} addSavedEvent={this.addSavedEvent} deleteSavedEvent={this.deleteSavedEvent} />} />
          <Route path="/Search" render={() => <Search {...this.state} addSavedEvent={this.addSavedEvent} deleteSavedEvent={this.deleteSavedEvent} />} />
          <Route path ="/ForgotPassword" component={Forgot} />
          <Route path ="/MakeAccount" component={MakeAccount} />
          <Route path="/Login" component={Login} />
          <Route path ="/Logout" component={Logout} />
          <Route path ="/Detail/:id" render={( props ) => <Detail {...this.state} {...props} />} />
          <Route path="/Calendar" component={Calendar} />

        </div>
      </BrowserRouter>
    )
  }
}

export default App
