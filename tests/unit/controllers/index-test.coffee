`import { test, moduleFor } from 'ember-qunit'`

moduleFor 'controller:index', {
  needs: [
    'controller:gists'
    'controller:user'
  ]
}

# Replace this with your real tests.
test 'it exists', (assert) ->
  controller = @subject()
  assert.ok controller

