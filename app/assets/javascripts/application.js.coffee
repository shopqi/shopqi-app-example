#= require jquery
#= require jquery_ujs
#= require_tree .

#= require twitter/bootstrap/dropdown.js
#= require twitter/bootstrap/transition.js
#= require twitter/bootstrap/collapse.js
###
#= require twitter/bootstrap/tooltip.js
###

$(document).ready ->
  $('#shop').focus()

  $('.dropdown-toggle').dropdown()
  ###
  #$('#main').tooltip selector: "span[rel=tooltip], a[rel=tooltip]"
  ###
