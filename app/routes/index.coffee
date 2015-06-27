`import config from 'weblog/config/environment'`
`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    user = @store.find 'user', config.APP.author
    controller.set 'user', user

    articles = @store.findAll 'gist'
    controller.set 'gists', articles

`export default IndexRoute`
