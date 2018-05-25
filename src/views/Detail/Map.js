import React, { Component } from 'react'
import GoogleMapReact from 'google-map-react'
import google from '@google/maps'

//Function to covert address to Latitude and Longitude
const getLocation = (address) => {
  const geocoder = new google.maps.Geocoder()
  geocoder.geocode( { 'address': address}, function(results, status) {

  if (status ===  google.maps.GeocoderStatus.OK) {
      var latitude = results[0].geometry.location.lat()
      var longitude = results[0].geometry.location.lng()
      console.log(latitude, longitude)
      } 
  }) 
}
  
class SimpleMap extends React.Component {
    constructor(props) {
        super(props)
        const location = this.props.location 
    }
  static defaultProps = {
    center: {
      lat: -33.92,
      lng: 151.23
    },
    zoom: 13
  };


  render() {
    return (

                             // Important! Always set the container height explicitly
      <div style={{ height: '50vh', width: '100%' }}>
        <GoogleMapReact
          bootstrapURLKeys={{ key: 'AIzaSyBPZz-XJmz3r8ZqBKJHDXA4ST5z6iIRRNY' }}
          defaultCenter={this.props.center}
          defaultZoom={this.props.zoom}
        >
        </GoogleMapReact>
      </div>
    )
  }
}
 
export default SimpleMap