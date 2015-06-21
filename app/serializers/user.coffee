`import DS from 'ember-data'`

UserSerializer = DS.RESTSerializer.extend
  extractSingle: (store, typeClass, payload, id) ->
    payload =
      user: payload
    return @_super store, typeClass, payload, id

`export default UserSerializer`
