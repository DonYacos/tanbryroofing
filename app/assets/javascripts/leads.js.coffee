# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	$(".estimate").hover ->
    $(this).addClass "leads-new"
    return
  , ->
    $(this).removeClass "leads-new"
    return

  $(".estimate input").focus ->
    $(".estimate").addClass "leads-new"
    return
  
return



