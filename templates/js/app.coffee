$('.ripple').scrollPoint
  offsetUp   : $(window).height() / 5

jQuery(document).on "scrollPointEnter", ".ripple", (event) ->
  $(this).addClass('active')
