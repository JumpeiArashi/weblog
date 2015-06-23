`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'gist',
  # Specify the other units that are required for this test.
  needs: [
    'serializer:gist'
    'model:file'
    'model:fork'
    'model:history'
    'model:user'
  ]

# Replace this with your real tests.
test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord
