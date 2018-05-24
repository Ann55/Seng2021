import React from 'react'
import * as SUI from 'semantic-ui-react'
import * as RV from 'react-virtualized'
import Padding from '../common/Padding'
import Search from '../common/Search'
import Save from '../common/SaveButton'
import { Link } from 'react-router-dom'
import firebase from '../../scripts/firebase'
import Table from '../UserDashboard/Table'
import Loading from '../UserDashboard/Loading'

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

    filterEvents = (searchString, events) => {
        const filter = d => {
            const exp = new RegExp(searchString, 'i')
            return (exp.test(this.props.societies[d.societyId].name) || exp.test(d.name))
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
        if(this.props.societies.length === 0){
            return <Loading />
        }
        return (
            <SUI.Container>
                <SUI.Header as='h1'>Search for events</SUI.Header>
                <div>
                    <Search value={this.state.searchString} onChange={this.handleSearchStringChange}/>
                    <Padding />
                    <SUI.Divider />
                    <Table data={this.state.filteredEvents}>
                        <RV.Column
                            dataKey="id"
                            label=""
                            width={40}
                            cellRenderer={({cellData}) =>
                                !this.props.user 
                                    ? <SUI.Popup
                                        trigger={<SUI.Icon style={{cursor:'not-allowed'}}name='heart' color='grey' size='large'/>}
                                        content='Login to save events'
                                        />
                                    : <Save value={this.props.savedEvents[cellData]} 
                                        toggleSaved={() => this.toggleSaved(cellData)}
                                    />}
                            disableSort
                        />
                        <RV.Column
                            dataKey="societyId"
                            label="Society"
                            width={200}
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
                            width={150}
                            cellRenderer={({cellData}) => cellData.format('DD/MM/YY - H:mm')}
                        />
                        <RV.Column
                            dataKey="dateEnd"
                            label="End time"
                            width={150}
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
                            width={130}
                        />
                    </Table>
                </div>
            </SUI.Container>
        )
    }
}