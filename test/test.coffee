React = require 'react'
test = require('tape')

fixture = {
  el: 'ul'
  props: {className: 'container'}
  children: [
    {
      el: 'li'
      props: {key: '1'}
      children: 'fooo'
    }
    {
      el: 'li'
      props: {key: '2'}
      children: 'fooo'
    }
    {
      el: 'li'
      props: {key: '3'}
      children: 'fooo'
    }
    {
      el: 'li'
      props: {key: '4'}
      children: 'fooo'
    }
  ]
}

test 'should render', (t) ->
  render = require '../'
  rendered = React.renderToString(render fixture)
  t.ok rendered.indexOf('fooo') > 0
