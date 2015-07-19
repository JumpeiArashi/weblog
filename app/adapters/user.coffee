`import DS from 'ember-data'`
`import config from 'weblog/config/environment'`

UserAdapter = DS.RESTAdapter.extend
  host: config.APP.api.host

`export default UserAdapter`
