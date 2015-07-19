`import DS from 'ember-data'`
`import config from 'weblog/config/environment'`

GistAdapter = DS.RESTAdapter.extend
  host: config.APP.api.host
  namespace: "users/#{config.APP.author}"

`export default GistAdapter`
