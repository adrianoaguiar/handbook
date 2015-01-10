module.exports = (grunt) ->
  pkg = grunt.file.readJSON('package.json')

  config =
    connect:
      http:
        options:
          hostname: "localhost"
          open: true
          port: process.env.PORT || 8080
          base: '.'
          livereload: true

    watch:
      options:
        livereload: true
      main:
        files: ['*.html', 'script/**/*', 'style/**/*', '!node_modules/*']
        tasks: []
      grunt:
        files: ['Gruntfile.coffee']

  tasks =
    default: ['connect', 'watch']

  # Project configuration.
  grunt.initConfig config
  grunt.loadNpmTasks name for name of pkg.devDependencies when name[0..5] is 'grunt-'
  grunt.registerTask taskName, taskArray for taskName, taskArray of tasks
