import React from 'react'
import * as SUI from 'semantic-ui-react'
import GoogleMapReact from 'google-map-react'
import geocoding from 'geocoding'

class SimpleMap extends React.Component {
  state = {
    latitude: 0,
    longitude: 0,
    loaded: false,
  }
  constructor(props) {
    super(props)
    this.getLocation(props.location)
  }

  getLocation = async (address) => {
    const results = await geocoding({ address, region: 'au' })
    this.setState({ latitude: results[0].geometry.location.lat, longitude: results[0].geometry.location.lng, loaded: true })
  }

  render() {
    if (!this.state.loaded) {
      return <h1>Loading...</h1>
    }
    return (
      // Important! Always set the container height explicitly
      <div style={{ height: '50vh', width: '100%' }}>
        <GoogleMapReact
          bootstrapURLKeys={{ key: 'AIzaSyBPZz-XJmz3r8ZqBKJHDXA4ST5z6iIRRNY' }}
          defaultCenter={{ lat: this.state.latitude, lng: this.state.longitude }}
          defaultZoom={13}
        >
          <div lat={this.state.latitude} lng={this.state.longitude}><SUI.Icon name='marker' color='red' size='huge'/></div>
        </GoogleMapReact>
      </div>
    )
  }
}
 
export default SimpleMap