React = require 'react'
Relay = require 'react-relay'
fragments = require './AppQ'

App = React.createClass
  displayName: 'App'
  render: ->
    <div>
      <h1>Widget list</h1>
      <ul>
        {this.props.viewer.widgets.edges.map (edge) ->
          <li key={edge.node.id}>{edge.node.name} (ID: {edge.node.id})</li>
        }
      </ul>
    </div>

module.exports = Relay.createContainer App, {fragments}
