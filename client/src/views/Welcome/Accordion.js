import React, { Component } from 'react'
import { Accordion, Icon } from 'semantic-ui-react'

export default class AccordionWelcome extends Component {
  state = { activeIndex: 0 }

  handleClick = (e, titleProps) => {
    const { index } = titleProps
    const { activeIndex } = this.state
    const newIndex = activeIndex === index ? -1 : index

    this.setState({ activeIndex: newIndex })
  }

  render() {
    const { activeIndex } = this.state

    return (
    <Accordion>
        <Accordion.Title active={activeIndex === 0} index={0} onClick={this.handleClick}>
            <Icon name='dropdown' />
            About us
        </Accordion.Title>
        <Accordion.Content active={activeIndex === 0}>
            <p>
                To make life easier by being able to search all UNSW events
            </p>  
        </Accordion.Content>

    </Accordion>
    )
  }
}