`import DS from 'ember-data'`

HistorySerializer = DS.JSONSerializer.extend
  primaryKey: 'version'

  extractSingle: (store, typeClass, payload, id) ->
    for key, value of payload.change_status
      payload[key] = value
    return @_super store, typeClass, payload, id

  extractArray: (store, primaryTypeClass, payload) ->
    for entry in rawPayload
      for key, value of entry.change_status
        entry[key] = value

    return @_super store, primaryTypeClass, payload


`export default HistorySerializer`
