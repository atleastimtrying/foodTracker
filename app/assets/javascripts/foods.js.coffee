# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('select#name').change ->
    option = $ 'option:selected'
    $('#food_name').val option.html()
    $('#food_points').val option.data 'points'
    $('#food_weight').val option.data 'weight'
    false


$(document).ready ready
$(document).on 'page:load', ready