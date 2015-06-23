`import DS from 'ember-data'`

Fork = DS.Model.extend
  owner: DS.belongsTo 'user'
  url: DS.attr()
  created_at: DS.attr()
  updated_at: DS.attr()

`export default Fork`
