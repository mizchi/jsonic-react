React = require 'react'

module.exports = render = (json) ->
  if typeof json is 'string'
    json
  else if typeof json is 'object'
    children =
      if typeof json.children is 'string'
        json.children
      else
        json.children.map (child) -> render(child)
    React.createElement json.el, json.props, children
