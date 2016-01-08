module.exports = config:
  files:
    javascripts: joinTo:
      'libraries.js': /^bower_components/
      'app.js': /^app/
    stylesheets:
      joinTo: 'app.css'
      order: before: ['/bower_components/normalize-css/normalize.css']
    templates: joinTo: 'app.js'

  plugins:
    browserSync:
      port: 3333
      logLevel: "debug"
      ###reloadOnRestart: true
      scriptPath: (path, port, options) ->
        return options.get("absolute")###

    cleancss:
      keepSpecialComments: "*"
      removeEmpty: true

    less:
      dumpLineNumbers: 'comments' # other options: 'mediaquery', 'all'

    uglify:
      preserveComments: false
      mangle: false

    coffeescript:
      bare: true
