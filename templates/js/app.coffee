

$ ->

  ## Simple AB Testing

  ABalytics.init reasons_experiment: [
    name: "ultimate_publishing"
    experiment2_slogan: "Why you'll love BitBalloon"
  ,
    name: "ultimate_hosting"
    experiment2_slogan: "Reasons to Host Your Frontend with BitBalloon"
  ]

  ABalytics.applyHtml()

  ga('set', 'dimension1', "reasons-experiment-A-" + ABalytics.readCookie("ABalytics_reasons_experiment") )

  $(".sign-up-button").on 'click', ->
    trackEvent("conversion", "sign-up", "Homepage Sign Up Button Clicked")

  ## UI

  goToByScroll = (id) ->
    $("html,body").animate
      scrollTop: $(id).offset().top
    , "slow"

  $(".down-hint a").click (e) ->
    e.preventDefault()
    goToByScroll $(this).attr("href")



