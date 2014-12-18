App.Models.Album = Backbone.Model.extend()

App.Collections.Albums = Backbone.Collection.extend
  model: App.Models.Album
  url: ->
    userId = $('#featured').data('user-id')
    "/users/#{userId}/albums"
  featured: ->
    @where(featured: true)

App.AlbumItemView = Backbone.View.extend
  tagName: 'li'
  template: _.template "<a href='/users/<%= user_id %>/albums/<%= id %>'><%= title %></a><button class='unfeature'>Unfeature&nbsp;&times;</button>"
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

$ ->
  App.albums = new App.Collections.Albums
  App.albumsListView = new App.AlbumsListView(collection: App.albums)
  App.albums.fetch
    success: ->
      App.albumsListView.setPlaceholder()
