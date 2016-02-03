gulp = require 'gulp'
coffee = require 'gulp-coffee'
zip = require 'gulp-zip'
del = require 'del'
runSequence = require 'run-sequence'

gulp.task 'clean', (cb) ->
  del 'build', cb

gulp.task 'coffee', ->
  gulp.src 'src/*.coffee'
  .pipe coffee bare: true
  .pipe gulp.dest 'build'

gulp.task 'copy', ->
  gulp.src 'node_modules/@(moment|slack-node)/**'
  .pipe gulp.dest 'build/node_modules'

gulp.task 'zip', ['coffee', 'copy'], ->
  gulp.src 'build/**'
  .pipe zip 'lambda.zip'
  .pipe gulp.dest 'dist'

gulp.task 'build', ->
  runSequence 'clean', 'zip'

