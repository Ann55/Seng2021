
import React from 'react'
import * as SUI from 'semantic-ui-react'

const ErrorSign = ({clashedEvents}) => {
    const ClashMessage = clashedEvents.map((event, j) =>
        <p key={j}>
            <b>{event.name}</b> <br/> {event.dateStart.format('H:mm, DD/MM')} ~ {event.dateEnd.format('H:mm, DD/MM')}
        </p>
    )
    const content = <div>This event clashes with: <br/><br/> {ClashMessage}</div>
    return clashedEvents.length === 0
    ? null
    : <SUI.Popup
        trigger={
                <SUI.Icon.Group size='large'>
                    <SUI.Icon color='blue' name='warning circle' />
                    <SUI.Icon corner color='yellow' size='small' name='question' />
                </SUI.Icon.Group>
                }
        content={content}
        basic
    />
}
export default ErrorSign