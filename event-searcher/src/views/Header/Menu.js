import React from "react"
import * as SUI from "semantic-ui-react"
import Link from "react-router-dom/Link";
import { withRouter } from "react-router-dom";

// const Menu = props => (
//     <div class="ui secondary pointing menu">
//         <a class="active item">
//             Home
//         </a>
//         <a class="item">
//             Saved events
//         </a>
//         <div class="right menu">
//             <a class="ui item">
//             Logout
//             </a>
//         </div>
//     </div>
// )


const Menu = props => (
    <SUI.Menu secondary pointing>
        <SUI.Menu.Item as={Link} to="/UserDashboard" active={props.location.pathname === "/UserDashboard"}>
            Home
        </SUI.Menu.Item>

        <SUI.Menu.Item as={Link} to="/Search" active={props.location.pathname === "/Search"}>
            Search events
        </SUI.Menu.Item>

        <SUI.Menu.Item as={Link} to="/Calendar" active={props.location.pathname === "/Calendar"}>
            Calendar
        </SUI.Menu.Item>

        <SUI.Menu.Menu position="right">
        {
            props.loginState
            ?<SUI.Menu.Item as={Link} to="/Logout">Logout</SUI.Menu.Item>
            :<SUI.Menu.Item as={Link} to="/Login">Login</SUI.Menu.Item>   
 
        } 
        </SUI.Menu.Menu>
     </SUI.Menu>
)

export default withRouter(Menu)