`import Ember from 'ember'`

IndexController = Ember.Controller.extend(
  needs: [
    'articles'
    'author'
  ]
)

`export default IndexController`
