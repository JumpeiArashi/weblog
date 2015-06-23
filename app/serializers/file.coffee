`import DS from 'ember-data'`

FileSerializer = DS.JSONSerializer.extend
  primaryKey: 'name'
  extractSingle: (store, typeClass, rawPayload, id, requestType) ->
    primaryKeyValue = (key for key of rawPayload)[0]
    payload =
      name: primaryKeyValue

    for key, value of rawPayload.primaryKeyValue
      payload[key] = value

    return @_super store, typeClass, payload, id

`export default FileSerializer`
