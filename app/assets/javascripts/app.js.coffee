$ ->
  App.albums = new App.Collections.Albums
  App.albumsListView = new App.AlbumsListView(collection: App.albums)
  App.albums.fetch
    success: ->
      App.albumsListView.hideLoader().setPlaceholder()
