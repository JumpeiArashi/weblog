`import DS from 'ember-data'`
`import config from 'weblog/config/environment'`

GistAdapter = DS.RESTAdapter.extend
  namespace: "users/#{config.APP.author}"

`export default GistAdapter`
