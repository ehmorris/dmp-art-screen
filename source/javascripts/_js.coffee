ART = [
  {
    filename: 'albers-homage-square.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'giotto-the-trial-by-fire.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'kandinsky-composition-ix.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'turner-storm-steam-boat.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'basquiat-philistines.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'goya-soup.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'lissitzky-proun.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'vaneyck-rnolfini.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'chagall-birthday.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'haring-keith-and-julia.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
  {
    filename: 'manet-at-bar.jpg'
    title   : 'placeholder'
    artist  : 'placeholder'
    year    : 'placeholder'
    details : 'placeholder'
  }
]

Array::random = ->
  this[Math.floor(Math.random() * this.length)]

replace_image_url = (filename) ->
  $('.art-container .item img').attr('src', "/images/#{filename}")

replace_image_info = (art) ->
  $('.placard-area .card .title').text(art.title)
  $('.placard-area .card .artist').text(art.artist)
  $('.placard-area .card .year').text(art.year)
  $('.placard-area .card .details').text(art.details)

show_random_piece = ->
  art = ART.random()
  replace_image_url(art.filename)
  replace_image_info(art)

$ ->
  onemin = 60000
  show_random_piece()
  window.setInterval(show_random_piece, onemin/60)
