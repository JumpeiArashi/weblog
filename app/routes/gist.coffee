`import Ember from 'ember'`

GistsRoute = Ember.Route.extend
  model: (params) ->
    return @store.fetchById 'gist', params.gist_id

  setupController: (controller, model) ->
    controller.set 'gist', model

`export default GistsRoute`
