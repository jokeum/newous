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
      media_link:
        data: [
          'http://jokeum.byethost17.com/nous/index.php/wp-json/wp/v2/media/'
        ]
      posts:
        # url: 'http://jokeum.byethost17.com/nous/index.php/wp-json/wp/v2/posts',
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
