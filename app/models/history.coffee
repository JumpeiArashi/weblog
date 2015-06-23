`import DS from 'ember-data'`

History = DS.Model.extend
  url: DS.attr()
  version: DS.attr()
  deletions: DS.attr()
  additions: DS.attr()
  total: DS.attr()
  comitted_at: DS.attr('date')

`export default History`
