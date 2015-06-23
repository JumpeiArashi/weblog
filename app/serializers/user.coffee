`import DS from 'ember-data'`

UserSerializer = DS.RESTSerializer.extend
  extractSingle: (store, typeClass, payload, id) ->
    payload =
      user: payload
    return @_super store, typeClass, payload, id

  extractFindBelongsTo: (store, typeClass, payload, id) ->
    delete payload.company
    delete payload.blog
    delete payload.location
    delete payload.email
    delete payload.hireable
    delete payload.bio
    delete payload.public_repos
    delete payload.public_gists
    delete payload.followers
    delete payload.following
    delete payload.created_at
    delete payload.updated_at

    payload =
      user: payload
    return @_super store, typeClass, payload, id

  extractArray: (store, primaryTypeClass, rawPayload) ->
    for entry in rawPayload
      delete entry.company
      delete entry.blog
      delete entry.location
      delete entry.email
      delete entry.hireable
      delete entry.bio
      delete entry.public_repos
      delete entry.public_gists
      delete entry.followers
      delete entry.following
      delete entry.created_at
      delete entry.updated_at
    payload =
      user: rawPayload

    return @_super store, primaryTypeClass, payload

`export default UserSerializer`
