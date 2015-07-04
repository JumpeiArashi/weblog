`import { test, moduleForComponent } from 'ember-qunit'`
`import config from 'weblog/config/environment'`

moduleForComponent 'summers-purvey', {
  # Specify the other units that are required for this test
  # needs: ['component:foo', 'helper:bar']
}

test 'it renders', (assert) ->
  assert.expect 3

  # Creates the component instance
  component = @subject()
  assert.equal component._state, 'preRender'
  assert.equal component.authorName, config.APP.author

  # Renders the component to the page
  @render()
  assert.equal component._state, 'inDOM'
