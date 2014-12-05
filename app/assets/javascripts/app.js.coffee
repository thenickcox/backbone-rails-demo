App.Models.Album = Backbone.Model.extend()

App.Collections.Albums = Backbone.Collection.extend
  model: App.Models.Album
  url: "/users/2/albums"

App.AlbumItemView = Backbone.View.extend
  tagName: 'li'
  template: _.template "<%= title %>"
  render: ->
    @$el.html @template @model.attributes
    @

App.AlbumsListView = Backbone.View.extend
  el: '#featured'
  initialize: ->
    @listenTo @collection, 'sync', @render
  render: ->
    for model in @collection.models
      itemView = new App.AlbumItemView(model: model)
      @$el.append itemView.render().el

$ ->
  App.albums = new App.Collections.Albums
  App.albumsListView = new App.AlbumsListView(collection: App.albums)
  App.albums.fetch()
