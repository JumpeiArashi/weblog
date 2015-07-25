`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend

  actions:
    error: (error, transition) ->
      if error
        return @transitionTo 'error', error
      return true

`export default ApplicationRoute`
