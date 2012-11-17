# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#get-involved-btn').click ->
    $('#get-involved-container').show()
    $('#get-involved-failure').hide()
    $('#get-involved-success').hide()

  $('#get-involved-container form').submit (e) ->
    e.preventDefault()
    $.ajax
      type: 'POST'
      url: pitch_participation_requests_path
      data: $('#get-involved-container form').serialize()
      dataType: 'JSON'

      success: ->
        $('#get-involved-success').show()
        $('#get-involved-failure').hide()
        $('#get-involved-container').hide()
      error: ->
        $('#get-involved-failure').show()
        $('#get-involved-success').hide()




