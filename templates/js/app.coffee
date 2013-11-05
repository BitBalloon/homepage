$ ->
  $(".sign-up-button").on 'click', ->
    trackEvent("conversion", "sign-up", "Homepage Sign Up Button Clicked")

