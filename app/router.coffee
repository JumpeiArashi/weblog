`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map () ->
  @resource 'gist', {path: '/gists/:gist_id'}
  @route 'error', {path: '/error/:error_message'}

`export default Router`
