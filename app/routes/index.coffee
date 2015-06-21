`import config from 'weblog/config/environment'`
`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    user = @store.find 'user', config.APP.author
    controller.set 'user', user

`export default IndexRoute`
