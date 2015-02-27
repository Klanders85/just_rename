module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    uglify: 
      build:
        src: 'src/<%= pkg.name %>.js'
        dest: 'build/<%= pkg.name %>.min.js'
    sass: 
      dist:
        options: 
          style: 'compressed'
        files: 'css/main.css': 'sass/main.scss'
    concat:
      options: 
        separator: ';'
      dist:
        src: [
          'css/libs/bootstrap.min.css'
          'css/main.css'
        ]
        dest: 'css/build/main.css'
    cssmin:
      add_banner:
        options: 
          banner: '/* My minified css file that contains bootstrap and main.css*/'
        files: 'css/build/main.css': [ 'css/build/main.css' ]
    connect: 
      server: 
        options:
          port: 9001
          base: ''
    watch: 
      css:
        files: [ 'sass/*.scss' ]
        tasks: [
          'sass'
          'connect'
        ]
      options:
        livereload: true

  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Default task(s).
  grunt.registerTask 'default', [
    'connect'
    'uglify'
    'sass'
    'concat'
    'cssmin'
    'watch'
  ]
  return
