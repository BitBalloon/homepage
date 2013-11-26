

$ ->
  ## Simple AB Testing

  ABalytics.init hero_experiment: [
    name: "video"
    experiment3_video: '<div class="large-6 columns intro-video"><div class="flex-video widescreen"><iframe src="//player.vimeo.com/video/80347348" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><p class="text-center">Learn how BitBalloon works in 2 minutes!</p></div>'
  ,
    name: "dropzone"
    experiment3_video: '<div class="large-5 right columns"><div class="dashed-box"><i class="icon-cloud-upload cloud-icon"></i><h2 class="headline">Drag Your Site<br/><span class="folder-support">Folder</span><span class="no-folder-support">Zip File</span> Here</h2></div><h5 class="demo-cta text-center">Don\'t have a site handy? <a href="http://5c4cf848f6454dc02ec8-c49fe7e7355d384845270f4a7a0a7aa1.r53.cf2.rackcdn.com/4f1b58ae-9e79-49aa-b987-80c0da0baba0/landing%20page.zip">Download a demo site</a></h5></div>'
  ]

  ABalytics.applyHtml()

  ga('set', 'dimension1', "hero-experiment-video-" + ABalytics.readCookie("ABalytics_hero_experiment") )

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





