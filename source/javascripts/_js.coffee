Array::random = ->
  this[Math.floor(Math.random() * this.length)]

mins_in_ms = (mins) ->
  mins * 60000

class PaintingCollection
  constructor: (@paintings) ->
    this.render_random()

  render_random: ->
    painting = @paintings.random()
    this.replace_dom_image_url(painting)
    this.replace_dom_image_info(painting)

  replace_dom_image_info: (painting) ->
    $('.placard-area .card .title').text(painting.title)
    $('.placard-area .card .artist').text(painting.artist)
    $('.placard-area .card .year').text(painting.year)
    $('.placard-area .card .details').text(painting.details)

  replace_dom_image_url: (painting) ->
    $('.art-container .item img').attr('src', "images/#{painting.filename}")

$ ->
  paintings = new PaintingCollection paintings_json
  window.setInterval ->
    paintings.render_random()
  ,mins_in_ms(.01)
