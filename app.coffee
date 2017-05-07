axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
# to use dynamic content
records      = require 'roots-records'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', 'yarn.lock']

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl'),
    records(
      posts:
        # url: 'http://nous.twbbs.org/wp-json/wp/v2/posts',
        # url: 'https://public-api.wordpress.com/rest/v1.1/sites/nousim.wordpress.com/posts/',
        file: 'assets/data/posts.json',
        # hook: (posts) ->
        #   posts = (test post for post in posts)
    )
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true