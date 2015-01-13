# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class window.Product
  constructor: (attrs) ->
    @id         = attrs.id
    @name       = attrs.name
    @image      = attrs.image
    @created_at = new Date(attrs.created_at)
