`import DS from 'ember-data'`

File = DS.Model.extend
  name: DS.attr()
  size: DS.attr()
  raw_url: DS.attr()
  type: DS.attr()
  language: DS.attr()
  truncated: DS.attr()
  content: DS.attr()
  htmlContent: DS.attr()

`export default File`
