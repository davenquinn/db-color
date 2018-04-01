{Component, createElement} = require 'react'
{render} = require 'react-dom'
h = require 'react-hyperscript'
{FocusStyleManager} = require '@blueprintjs/core'
FocusStyleManager.onlyShowFocusOnTabs()

class App extends Component
  constructor: ->
    super()
    @state = {
      tableName: 'facies'
      tableSchema: 'section'
      dbName: 'Naukluft'
      colorColumns: ['color']
    }

  render: ->
    {tableSchema, tableName} = @state
    h 'div', [
      h 'h1', "#{tableSchema}.#{tableName}"
    ]



render(
  createElement(App),
  document.querySelector('#main'))

