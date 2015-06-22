`import DS from 'ember-data'`

RelatedUser = DS.Model.extend
  login: Ds.attr()
  id: Ds.attr()
  avatar_url: Ds.attr()
  gravatar_id: Ds.attr()
  url: Ds.attr()
  html_url: Ds.attr()
  followers_url: Ds.attr()
  following_url: Ds.attr()
  gists_url: Ds.attr()
  starred_url: Ds.attr()
  subscriptions_url: Ds.attr()
  organizations_url: Ds.attr()
  repos_url: Ds.attr()
  events_url: Ds.attr()
  received_events_url: Ds.attr()
  type: Ds.attr()
  site_admin: Ds.attr()

`export default RelatedUser`
