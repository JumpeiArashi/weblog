`import Ember from 'ember'`

IndexController = Ember.Controller.extend(
  needs: [
    'gists'
    'user'
  ]
)

`export default IndexController`
