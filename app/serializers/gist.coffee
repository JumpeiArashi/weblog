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
  extractSingle: (store, typeClass, rawPayload, id) ->
    files = []
    for filename, values of rawPayload.files
      record = {}
      record.name = filename
      (record[key] = value for key, value of values)
      files.push record
    rawPayload.files = files

    rawPayload =
      gist: rawPayload
    return @_super store, typeClass, rawPayload, id

  extractArray: (store, primaryTypeClass, rawPayload) ->
    for entry in rawPayload
      delete entry.forks
      delete entry.history

      # `files` is strange structure for emberjs
      files = []
      for filename, values of entry.files
        record = {}
        record.name = filename
        (record[key] = value for key, value of values)
        files.push record
      entry.files = files

    payload =
      gist: rawPayload

    return @_super store, primaryTypeClass, payload
)

`export default GistSerializer`
