`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    user = @store.find 'user', 1
    controller.set 'user', user

`export default IndexRoute`
