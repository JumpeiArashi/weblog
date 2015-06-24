`import DS from 'ember-data'`

FileSerializer = DS.JSONSerializer.extend
  primaryKey: 'name'

`export default FileSerializer`
