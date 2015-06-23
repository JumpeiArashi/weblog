`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'file',
  # Specify the other units that are required for this test.
  needs: ['serializer:file']

# Replace this with your real tests.
test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord
