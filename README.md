A lil' website to rotate the art on the big 1920x1080 screen in the room where I work

# Setup
* Run `bundle install`
* Run `middleman server --port 3000`
* To deploy, run `rake build`, then `rake publish`

# Artists
* Checkout the [list of work here](https://github.com/ehmorris/genius-art-screen/blob/master/source/javascripts/_paintings.json.js)

# Adding stuff
I'm thinking the process for adding a piece/arist should be:
* (Fork this repo)
* Grab a high quality image (at least 4000x4000px) that's not too large — [Wikimedia has a large store of HQ stuff from the Google Art Project](http://commons.wikimedia.org/wiki/Category:Google_Art_Project) ([see here also](http://commons.wikimedia.org/wiki/Category%3aGigapixel_images_from_the_Google_Art_Project)), and [The Met has some stuff too](http://www.openculture.com/2014/05/the-met-puts-400000-high-res-images-online.html)
* Make sure the image has a good filename, then add it to the [images](https://github.com/ehmorris/genius-art-screen/tree/master/source/images) directory
* Gather the artist's name, the painting name, the painting completion date, and the methods/materials if possible (a good source for this is wikiart.org)
* Add that info to the [paintings json file](https://github.com/ehmorris/genius-art-screen/blob/master/source/javascripts/_paintings.json.js) including a link to the source of that info
* (Create a PR)

*P.S. This uses my nice middleman base install repo: https://github.com/ehmorris/middleman-base-install*
