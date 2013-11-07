
$ ->
  ABalytics.init hero_experiment: [
    name: "ultimate_publishing"
    experiment1_lead: "The ultimate publishing engine for your HTML5 sites and apps"
  ,
    name: "ultimate_hosting"
    experiment1_lead: "The ultimate hosting & deployment platform for your HTML5 sites and apps"
  ,
    name: "complete_hosting"
    experiment1_lead: "The complete hosting & deployment platform for your HTML5 sites and apps"
  ]

  ABalytics.applyHtml()

  ga('set', 'dimension1', "hero-experiment-" + ABalytics.readCookie("ABalytics_hero_experiment") )

  $(".sign-up-button").on 'click', ->
    trackEvent("conversion", "sign-up", "Homepage Sign Up Button Clicked")



