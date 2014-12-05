App.Models.Album = Backbone.Model.extend()

App.Collections.Albums = Backbone.Collection.extend
  model: App.Models.Album
  url: "/users/2/albums"

App.AlbumItemView = Backbone.View.extend
  tagName: 'li'
  template: _.template "<%= title %>"
  initialize: ->
    @model = new App.Models.Album (title: 'Giant Steps')
  render: ->
    @$el.html @template @model.attributes
    @
