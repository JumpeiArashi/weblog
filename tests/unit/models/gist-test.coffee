`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'gist', {
  # Specify the other units that are required for this test.
  needs: [
    'model:file'
    'model:fork'
    'model:history'
    'model:user'
  ]
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
