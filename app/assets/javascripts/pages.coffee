# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

console.log("pages.coffee is running");

accordions = document.getElementsByClassName("accordion");
counter = 0
while counter < accordions.length
  accordions[counter].addEventListener 'click', ->
    @classList.toggle 'active'
    partList = @nextElementSibling
    if partList.style.display == "block"
      partList.style.display = "none"
    else
      partList.style.display = "block"
    return
  counter++
