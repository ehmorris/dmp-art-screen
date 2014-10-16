art_filenames = [
  'albers-homage-square.jpg'
  'giotto-the-trial-by-fire.jpg'
  'kandinsky-composition-ix.jpg'
  'turner-storm-steam-boat.jpg'
  'basquiat-philistines.jpg'
  'goya-soup.jpg'
  'lissitzky-proun.jpg'
  'vaneyck-rnolfini.jpg'
  'chagall-birthday.jpg'
  'haring-keith-and-julia.jpg'
  'manet-at-bar.jpg'
]

Array::random = ->
  this[Math.floor(Math.random() * this.length)]

$ ->
  $('.art-container .item img').attr('src', "/images/#{art_filenames.random()}")
