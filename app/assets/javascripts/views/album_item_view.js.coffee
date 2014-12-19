App.AlbumItemView = Backbone.View.extend
  tagName: 'li'
  template: JST['templates/album_template']
  initialize: (opts) ->
    @listView = opts.listView
  render: ->
    @$el.html @template @model.attributes
    @
  events:
    'click .unfeature': 'unfeature'
  unfeature: ->
    @model.save(featured: false)
    @remove()
    @listView.trigger 'handlePlaceholder'

