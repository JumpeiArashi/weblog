`import config from 'weblog/config/environment'`
`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: (params) ->
    return Ember.RSVP.hash
      user: @store.find 'user', config.APP.author
      gists: @store.findAll 'gist'

`export default IndexRoute`
