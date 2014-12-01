# jsonic-react

Deadly simple, react virtual dom generator by pure json format.

## What's this?

Just json converter to virtual dom.

I will use this for json patch and base of template engine.

## How to use

```javascript
var React = require('react');
var jsonic = require('jsonic-react');

var vdom_format = {
  el: 'ul',
  props: {className: 'container'},
  children: [
    {
      el: 'li',
      props: {key: '1'},
      children: 'fooo'
    },
    {
      el: 'li',
      props: {key: '2'},
      children: 'fooo'
    },
    {
      el: 'li',
      props: {key: '3'},
      children: 'fooo'
    },
    {
      el: 'li',
      props: {key: '4'},
      children: 'fooo'
    }
  ]
}

React.createClass({
  render: function(){
    return jsonic(vdom_format);
  }
});
```

## LICENSE

MIT
