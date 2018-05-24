import React from 'react'
import * as SUI from 'semantic-ui-react'
import * as RV from 'react-virtualized'
import Padding from '../common/Padding'
import Search from '../common/Search'
import Save from '../common/SaveButton'
import { Link } from 'react-router-dom'
import firebase from '../../scripts/firebase'
import ClashMessage from './ClashMessage'
import Table from './Table'
import Add from './AddEvents'

import NotLoggedIn from './NotLoggedIn'

const db = firebase.firestore()

export default class Home extends React.Component {
    constructor(props) {
        super(props)
        const events = this.flattenEvents(props.societies)
        this.state = {
            searchString: '',
            events,
            filteredEvents: this.filterEvents('', events),
        }    
    }
    
    componentDidUpdate(prevProps) {
        if (prevProps.societies !== this.props.societies) {
            const events = this.flattenEvents(this.props.societies)
            this.setState({ events, filteredEvents: this.filterEvents(this.state.searchString, events)})
        }
        if (prevProps.savedEvents !== this.props.savedEvents) {
            this.setState({ filteredEvents: this.filterEvents(this.state.searchString, this.state.events )})
        }
    }

    flattenEvents = (societies) => {
        const events = []
        for(const society of Object.values(societies)){
            for(const event of Object.values(society.events)){
                events.push({ ...event, societyId: society.id }) 
            }
        }
        return events
    }

    handleSearchStringChange = (e) => {
        const filteredEvents = this.filterEvents(e.target.value, this.state.events)
        this.setState({ searchString: e.target.value, filteredEvents })
    }

    checkClash = () => {
        // sorting
        const sortedEvents = [...this.state.events].filter(e => this.props.savedEvents[e.id]).sort((a, b) => {
            if( a.dateStart.isAfter(b.dateStart)) return -1
            if( a.dateStart.isSame(b.dateStart)) return 0
            return 1
        })
        const clashes = []
        for( let i = 0; i < sortedEvents.length-1; i++){
            for( let j = i+1; j < sortedEvents.length; j++ ){
                if(sortedEvents[i].dateEnd.isAfter(sortedEvents[j].dateStart)){
                    clashes.push([sortedEvents[i], sortedEvents[j]])
                }
            }
        }
        return clashes
    }

    filterEvents = (searchString, events) => {
        const filter = d => {
            const exp = new RegExp(searchString, 'i')
            return this.props.savedEvents[d.id] && (exp.test(this.props.societies[d.societyId].name) || exp.test(d.name))
        }
        return events.filter(filter)
    }

    toggleSaved = (eventId) => {
        if (this.props.savedEvents[eventId]) {
            this.props.deleteSavedEvent(eventId)
            db.doc(`users/${this.props.user.uid}/saved/${eventId}`).delete()
        } else {
            this.props.addSavedEvent(eventId)
            db.doc(`users/${this.props.user.uid}/saved/${eventId}`).set({ saved: true })            
        }
    }

    render() {
        let content
        if(!this.props.user) {
            content = <NotLoggedIn />
        } else if (Object.keys(this.props.savedEvents).length === 0){
            content = <Add />
        }else{
            content = 
            <div>
                <Search value={this.state.searchString} onChange={this.handleSearchStringChange}/>
                <Padding />
                <SUI.Divider />
                <ClashMessage clashes={this.checkClash()} />
                <Table data={this.state.filteredEvents}>
                    <RV.Column
                        dataKey="id"
                        label=""
                        width={40}
                        cellRenderer={({cellData}) => <Save value={this.props.savedEvents[cellData]} toggleSaved={() => this.toggleSaved(cellData)}/>}
                        disableSort
                    />
                    <RV.Column
                        dataKey="societyId"
                        label="Society"
                        width={120}
                        cellDataGetter={({rowData, dataKey}) => this.props.societies[rowData[dataKey]].name}
                    />
                    <RV.Column
                        dataKey="name"
                        label="Event Name"
                        width={400}
                        cellRenderer={({cellData, rowData}) => <Link to={`detail/${rowData.id}`}>{cellData}</Link>}
                    />
                    <RV.Column
                        dataKey="dateStart"
                        label="Start time"
                        width={200}
                        cellRenderer={({cellData}) => cellData.format('DD/MM/YY - H:mm')}
                    />
                    <RV.Column
                        dataKey="dateEnd"
                        label="End time"
                        width={200}
                        cellRenderer={({cellData}) => cellData.format('DD/MM/YY - H:mm')}
                    />
                    <RV.Column
                        dataKey="going"
                        label="going"
                        width={100}
                    />
                    <RV.Column
                        dataKey="interested"
                        label="interested"
                        width={100}
                    />
                </Table>
            </div>
        }    

        return (
            <SUI.Container>
                <p align='left' style={{ fontSize: 20 }}> Welcome back!</p>
                <SUI.Header as='h1'>Saved items</SUI.Header>
                {content}
            </SUI.Container>
        )
    }
}