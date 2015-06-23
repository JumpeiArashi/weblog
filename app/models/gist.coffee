`import DS from 'ember-data'`

Gist = DS.Model.extend
  url: DS.attr()
  forks_url: DS.attr()
  commits_url: DS.attr()
  description: DS.attr()
  public: DS.attr()
  owner: DS.belongsTo 'user'
  files: DS.hasMany 'file'
  comments: DS.attr()
  comments_url: DS.attr()
  html_url: DS.attr()
  git_pull_url: DS.attr()
  git_push_url: DS.attr()
  created_at: DS.attr('date')
  updated_at: DS.attr()
  forks: DS.hasMany 'fork'
  hitsory: DS.hasMany 'history'

`export default Gist`
