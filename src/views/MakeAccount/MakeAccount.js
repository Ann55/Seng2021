import React from 'react'
import * as SUI from 'semantic-ui-react'

const MakeAccount = () => (
    <SUI.Grid  className="vertically padded centered" container>

        <SUI.Grid.Column width='7'>
            <SUI.Form>
                <SUI.Form.Group widths='equal'>
                    <SUI.Form.Field>
                        <SUI.Form.Input label='first name'/>
                    </SUI.Form.Field>

                    <SUI.Form.Field>
                        <SUI.Form.Input label='last name'/>
                    </SUI.Form.Field>                
                </SUI.Form.Group>
                <SUI.Form.Field>
                    <SUI.Form.Input label='E-mail'/>
                </SUI.Form.Field>

                <SUI.Form.Field>
                    <SUI.Form.Input label='password' type='password'/>
                </SUI.Form.Field>

                <SUI.Form.Field>
                    <SUI.Form.Input label='confirm password' type='password'/>
                </SUI.Form.Field>  

                <SUI.Form.Field control={SUI.Checkbox} label='I agree to the Terms and Conditions' />
                <SUI.Form.Field control={SUI.Button}>Submit</SUI.Form.Field>
            </SUI.Form>
        </SUI.Grid.Column>
      </SUI.Grid>
)
export default MakeAccount
