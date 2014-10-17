Array::random = ->
  this[Math.floor(Math.random() * this.length)]

mins_in_ms = (mins) ->
  mins * 60000

class PaintingCollection
  constructor: (@paintings, @current_painting) ->
    this.render_random()

  render_random: ->
    painting = @paintings.random()

    if painting is @current_painting
      this.render_random()
    else
      this.replace_dom_image_url(painting)
      this.replace_dom_image_info(painting)
      $('.painting-container').removeClass 'pan'
      @current_painting = painting

  replace_dom_image_info: (painting) ->
    $('.card .title').text(painting.title)
    $('.card .artist').text(painting.artist)
    $('.card .year').text(painting.year)
    $('.card .details').text(painting.details)

  replace_dom_image_url: (painting) ->
    $('.painting img').attr('src', "images/#{painting.filename}")

  pan_current: ->
    $('.painting-container').addClass 'pan'

$ ->
  paintings = new PaintingCollection paintings_json

  render_paintings_loop = window.setInterval ->
    paintings.render_random()
  ,mins_in_ms(5)

  pan_paintings_loop = window.setTimeout ->
    window.setInterval ->
      paintings.pan_current()
    ,mins_in_ms(5)
  ,mins_in_ms(2.5)
