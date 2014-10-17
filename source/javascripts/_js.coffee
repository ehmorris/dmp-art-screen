Array::random = ->
  this[Math.floor(Math.random() * this.length)]

replace_image_url = (filename) ->
  $('.art-container .item img').attr('src', "images/#{filename}")

replace_image_info = (art) ->
  $('.placard-area .card .title').text(art.title)
  $('.placard-area .card .artist').text(art.artist)
  $('.placard-area .card .year').text(art.year)
  $('.placard-area .card .details').text(art.details)

show_random_piece = ->
  art = window.art.random()
  replace_image_url(art.filename)
  replace_image_info(art)

$ ->
  window.art = artjson
  onemin = 60000

  show_random_piece()
  window.setInterval(show_random_piece, onemin/60)
