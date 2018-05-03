import React from "react"
// value: any
// onChange: Function
const Search = props => (
    <div className="ui search">
  <div className="ui large fluid icon input">
    <i className="search icon"></i>
    <input className="prompt" type="text" value={props.value} onChange={props.onChange} placeholder="Search for keywords..."></input>
  </div>
  <div className="results"></div>
</div>
    /* <input placeholder="Search for keywords" value={props.value} onChange={props.onChange}/> */
)



export default Search