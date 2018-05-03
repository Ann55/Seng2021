import React from 'react'
import * as SUI from 'semantic-ui-react'
import Image from 'react-image'
import { data } from '../../data/fakedata'

const Detail = () => (
//     <SUI.Grid celled className="vertically padded centered" container>
//     <SUI.Grid.Row>
//       <SUI.Grid.Column width={3}>
//       <p>how are you</p>
//       </SUI.Grid.Column>
//       <SUI.Grid.Column width={11}>
//       <h3>Society name  -  Event name</h3>
//       </SUI.Grid.Column>
//     </SUI.Grid.Row>

//     <SUI.Grid.Row>
//       <SUI.Grid.Column width={3}>
//         <p>Goin to be</p>
//         <p>Photo of map</p>
//         <p>Somewhere</p>
//         <p>Here</p>

//       </SUI.Grid.Column>
//       <SUI.Grid.Column width={11}>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       <p>uhhhh</p>
//       </SUI.Grid.Column>

//     </SUI.Grid.Row>
//   </SUI.Grid>


<SUI.Grid  className=" centered" container columns={2} divided>
    <SUI.Grid.Row stretched>
        <SUI.Grid.Column width='5'>
            <SUI.Segment>
                <p> Date: 04/05/18 </p>
                <p> Going: 44</p>
                <p> Interested: 666 </p>
                <p> Location: city </p>
                <p> and </p>
                <p> here is </p>
                <p> map of </p>
                <p> city  :DD</p>
                <img src={require('../../data/map1.png')} width="300" height="250" />
            </SUI.Segment>
        </SUI.Grid.Column>  

        <SUI.Grid.Column width='11'>
            <SUI.Segment>
                <h3>
                    UNSW CseSoc - pubcrawl
                </h3>
            </SUI.Segment>
            <SUI.Segment>
                <p> 

                 Get ready for a lit night of parental supervision and the responsible consumption of cordial...ohh and TONS OF FREE DRINKS 🍺 + FOOD 🍕 + CHALLENGES 🏆 + BANTER 🗣️ + NEW FRIENDS 👋!

CSESoc and CSE Revue are partnering up again to bring you a wild night with hectic challenges and pubs to crawl to. So grab a team of you and your 5 best mates and sign up for the best night ever! 

There will be a long list of challenges to complete throughout the city, so battle it out to win some SWEEEEET PRIZES!!! Challenges will be released on the day, so stay tuned! 

Remember: you can complete challenges, do a maccas run or shred up the dance floor at any point, no need to follow the masses or go to every bar!

If you are unable to find a team, go ahead and sign up anyway and we'll assign you a lit AF team!


~~~~~~EVENT DETAILS~~~~~~

START: Roundhouse @ 5pm on May 3rd

WHERE:
💥 Roundhouse till 6:30 - Pres and payment 
💥 Scruffy Murphy's till 9 - FREE VODKA MIXER 🍹 AND PIZZA 🍕
💥 Reef Bar till 10:30 - FREE BEER 🍺 OR SHOT 🥃
💥 Sidebar till bedtime (so like never) - FREE DRINK 🍾

THEME: Neon Night 🚥

TICKETING: 
- $5pp or $20 per team of 4-6
- Please pay at Roundhouse before 6:30pm!
- If you're coming late, please get someone to buy you a wristband or try to find a Social Director in and amongst the chaos

SIGN YOUR TEAM UP HERE:
https://goo.gl/forms/Ja4GFppmH89Gysat2

~~~~~~~~ STAY IN TOUCH ~~~~~~~~

Our Facebook Pages - https://www.facebook.com/csesoc/
https://www.facebook.com/cserevue/
Our Facebook Groups - https://www.facebook.com/groups/csesoc/
https://www.facebook.com/groups/cserevue/   
                    
                </p>
                <SUI.Popup
                    trigger={<SUI.Icon size="big" name="facebook square" link />}
                    content="Find out more on Facebook."
                    basic
                />
            </SUI.Segment>
        </SUI.Grid.Column>

    </SUI.Grid.Row>
</SUI.Grid>
)
export default Detail
