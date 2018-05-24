import React from 'react'
import * as RV from 'react-virtualized'

export default class Table extends React.Component {
    constructor(props) {
        super(props)
        const sortedData = this.sortData(this.props.data, '', 'ASC')
        this.state = {
            sortBy: '',
            sortDirection: 'ASC',
            sortedData,
        }    
    }
    
    componentDidUpdate(prevProps) {
        if (prevProps.data !== this.props.data) {
            this.setState({ sortedData: this.sortData(this.props.data, this.state.sortBy, this.state.sortDirection) })
        }
    }

    rowGetter = ({ index }) => this.state.sortedData[index]

    sortData = (data, sortBy, sortDirection) => {
        const comparer = (a, b) => {
            if (sortDirection === 'ASC') {
                return (a[sortBy] > b[sortBy]) ? 1 : -1
            } else if (sortDirection === 'DESC') {
                return (a[sortBy] < b[sortBy]) ? 1 : -1
            }
        }

        return sortDirection === 'NONE' ? [...data] : [...data].sort(comparer)
    }

    handleGridSort = ({ sortBy, sortDirection }) => {
        this.setState({ sortedData: this.sortData(this.props.data, sortBy, sortDirection), sortBy, sortDirection })
    }

    render() {
        return (
            <RV.AutoSizer disableHeight>
                {({width}) => (
                    <RV.Table
                        headerHeight={30}
                        height={400}
                        rowHeight={40}
                        rowGetter={this.rowGetter}
                        rowCount={this.state.sortedData.length}
                        sort={this.handleGridSort}
                        sortBy={this.state.sortBy}
                        sortDirection={this.state.sortDirection}
                        width={width}
                    >
                        { this.props.children }
                    </RV.Table>
                )}
            </RV.AutoSizer>
        )
    }
}
