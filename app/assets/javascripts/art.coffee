# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  preview = $("#preview")
  art_input = $("#art_input")

  art_input.keypress ->
    value = art_input.val()
    preview.text(value)

  art_input.change ->
    value = art_input.val()
    preview.text(value)
