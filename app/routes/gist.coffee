`import Ember from 'ember'`

GistRoute = Ember.Route.extend

  model: (params) ->
    return @store.fetchById 'gist', params.gist_id

  afterModel: (gist, transition) ->
    # Convert github flavor markdown to HTML
    return new Ember.RSVP.Promise (resolve, reject) ->
      firstFile = gist.get('files').get('firstObject')
      
      xhr = new XMLHttpRequest()
      xhr.open 'POST', 'https://api.github.com/markdown'

      xhr.onload = (e) ->
        if xhr.status is 200
          firstFile.set 'htmlContent', xhr.responseText
          resolve(gist)
        else
          reject new Ember.Error 'Sorry... An error occurred... Backend API didn\'t return 200!'

      xhr.onerror = (e) ->
        reject new Ember.Error 'Sorry... Backend API connection error occurred...'

      requestBody =
        text: firstFile.get 'content'
        mode: 'gfm'
      xhr.send JSON.stringify requestBody

  setupController: (controller, model) ->
    controller.set 'gist', model

`export default GistRoute`
