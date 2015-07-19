`import DS from 'ember-data'`
`import config from 'weblog/config/environment'`

GistAdapter = DS.RESTAdapter.extend
  host: config.APP.api.host
  urlForFindAll: (modelName) ->
    return "#{@host}/users/#{config.APP.author}/gists"

`export default GistAdapter`
