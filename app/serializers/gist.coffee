`import DS from 'ember-data'`

GistSerializer = DS.RESTSerializer.extend(
  DS.EmbeddedRecordsMixin
  attrs:
    owner:
      serialize: false
      deserialize: 'records'
    files:
      serialize: false
      deserialize: 'records'
    forks:
      serialize: false
      deserialize: 'records'
    history:
      serialize: false
      deserialize: 'records'
  extractSingle: (store, typeClass, payload, id) ->
    payload =
      gist: payload
    return @_super store, typeClass, payload, id

  extractArray: (store, primaryTypeClass, rawPayload) ->
    for entry in rawPayload
      delete entry.forks
      delete entry.history
    payload =
      gist: rawPayload

    return @_super store, primaryTypeClass, payload
)

`export default GistSerializer`
