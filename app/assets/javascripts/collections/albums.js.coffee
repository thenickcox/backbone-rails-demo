App.Collections.Albums = Backbone.Collection.extend
  model: App.Models.Album
  url: ->
    userId = $('#featured').data('user-id')
    "/users/#{userId}/albums"
  featured: ->
    @where(featured: true)

