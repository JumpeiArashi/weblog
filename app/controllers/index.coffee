`import Ember from 'ember'`

IndexController = Ember.Controller.extend(
  needs: [
    'articles'
    'user'
  ]
)

`export default IndexController`
