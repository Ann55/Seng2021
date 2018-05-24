import React from 'react'
import * as SUI from 'semantic-ui-react'
//import { data } from '../../data/fakedata'
import { data } from '../../data/UNSWSocietyFBEvents'
import Padding from '../common/Padding'
import Search from '../common/Search'
import * as RV from 'react-virtualized'
import Save from '../common/SaveButton'
import { Link } from 'react-router-dom'

// templmao
const userData = data.filter(d => d.isSaved)

export default class Home extends React.Component {
    state = {
        searchString: "",
        data: userData,
        filteredData: userData,
        sortBy: "",
        sortDirection: "ASC",
    }

    checkClash = () => {
        const dateData = this.state.data.reduce((total, val) => {
            if (total[val.date]) {
                total[val.date].push(val)
            } else {
                total[val.date] = [val]
            }
            return total
        }, {})
        const clashes = []
        for(let [date, events] of Object.entries(dateData)) {
            if(events.length > 1){
                clashes.push(events)
            }
        }
        return clashes
    }

    toggleSaved = (id) => {
        const data = [...this.state.data]
        const row = data.find(d => d.id === id)
        row.isSaved = !row.isSaved
        this.setState({ data })
    }

    handleSearchStringChange = (e) => {
        this.filterData(e.target.value)
        this.setState({ searchString: e.target.value })
    }

    filterData = (searchString) => {
        const filter = d => {
            const exp = new RegExp(searchString, 'i')
            return exp.test(d.society) || exp.test(d.eventName)
        }
        const filteredData = searchString
            ? this.state.data.filter(filter)
            : this.state.data
        this.setState({ filteredData: filteredData })
    }

    rowGetter = ({ index }) => this.state.filteredData[index]

    handleGridSort = ({ sortBy, sortDirection }) => {
        const comparer = (a, b) => {
            if (sortDirection === 'ASC') {
                return (a[sortBy] > b[sortBy]) ? 1 : -1
            } else if (sortDirection === 'DESC') {
                return (a[sortBy] < b[sortBy]) ? 1 : -1
            }
        }

        const rows = sortDirection === 'NONE' ? [...this.state.data] : [...this.state.data].sort(comparer)

        this.setState({ filteredData: rows, sortBy, sortDirection })
    }

    render() {
        let messages = this.checkClash().map((events, i) => (
            <SUI.Message error key={i}>

                <p> You have a few events on at the same time: </p>
                { events.map((event, j) => <p key={j}>{event.eventName}</p>) }

            </SUI.Message>
        ))
        
        let content
        if (!this.props.isLoggedIn) {
            content = 
                <div>
                    <Padding />
                    <Padding />

                    <SUI.Grid.Column>
                        <h3>You are not logged in, please <Link to="/Login">Log in</Link> to use this feature</h3>
                    </SUI.Grid.Column>
                </div>
        } else {
            content = (
                <div>
                <Search value={this.state.searchString} onChange={this.handleSearchStringChange}/>
                <Padding />
                <SUI.Divider />
                    { messages }
                        
                    <RV.AutoSizer disableHeight>
                        {({width}) => (
                            <RV.Table
                                headerHeight={30}
                                height={400}
                                rowHeight={40}
                                rowGetter={this.rowGetter}
                                rowCount={this.state.filteredData.length}
                                sort={this.handleGridSort}
                                sortBy={this.state.sortBy}
                                sortDirection={this.state.sortDirection}
                                width={width}
                            >
                                <RV.Column
                                    dataKey="isSaved"
                                    label=""
                                    width={60}
                                    cellRenderer={({cellData, rowData}) => <Save value={cellData} toggleSaved={() => this.toggleSaved(rowData.id)}/>}
                                    disableSort
                                />
                                <RV.Column
                                    dataKey="society"
                                    label="Society"
                                    width={200}
                                />
                                <RV.Column
                                    dataKey="eventName"
                                    label="Event Name"
                                    width={400}
                                    cellRenderer={({cellData, rowData}) => <Link to={`detail/${rowData.id}`}>{cellData}</Link>}
                                />
                                <RV.Column
                                    dataKey="date"
                                    label="Date"
                                    width={200}
                                />
                                <RV.Column
                                    dataKey="going"
                                    label="going"
                                    width={200}
                                />
                                
                                <RV.Column
                                    dataKey="interested"
                                    label="interested"
                                    width={200}
                                />
                            </RV.Table>
                        )}
                    </RV.AutoSizer>
                </div>
            )
        }
        return (
            <SUI.Container>
                <SUI.Header as='h1' >
                    Saved items
                </SUI.Header>

                {content}
            </SUI.Container>
        )
    }
}