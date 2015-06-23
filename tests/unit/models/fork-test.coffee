`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'fork', {
  # Specify the other units that are required for this test.
  needs: ['model:user']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
