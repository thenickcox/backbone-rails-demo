App.AlbumsListView = Backbone.View.extend
  el: '#featured'
  initialize: ->
    @listenTo @collection, 'sync', @render
    @on 'handlePlaceholder', @setPlaceholder, @
  render: ->
    for model in @collection.featured()
      itemView = new App.AlbumItemView(model: model, listView: this)
      @$el.append itemView.render().el
  setPlaceholder: ->
    if @collection.featured().length is 0
      $('.featured-albums').append('<p>No featured albums</p>')
    else
      $('.featured-albums').find('p').remove()

