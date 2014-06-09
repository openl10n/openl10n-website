var gulp = require('gulp')
var gutil = require('gulp-util')

var clean = require('gulp-clean')
var concat = require('gulp-concat')
var connect = require('gulp-connect')

//
// Variables
//
var srcDir = './src'
var distDir = './build'
var isDebug = !gutil.env.prod

//
// Default
//
gulp.task('default', function() {
  gulp.start('build', 'watch')
});

//
// Clean
//
gulp.task('clean', function(cb) {
  gulp
    .src(distDir, {read: false})
    .pipe(clean())
    .on('finish', cb)
});

//
// Build
//
gulp.task('build', ['clean'], function() {
  gulp.start('site', 'styles', 'scripts')
});

//
// Server
//
gulp.task('server', function() {
  connect.server({
    root: distDir,
    port: 3000,
    livereload: false
  });
});

//
// Watch
//
gulp.task('watch', ['server'], function() {
  gulp.watch(srcDir + '/**/*.{html,md,swig}', ['site'])

  gulp.watch(srcDir + '/**/*.css', ['styles'])
});

//
// Site
//
gulp.task('site', function() {
  var Metalsmith = require('metalsmith')
  var templates  = require('metalsmith-templates')
  var permalinks = require('metalsmith-permalinks')
  var markdown   = require('metalsmith-markdown')
  var ignore     = require('metalsmith-ignore')

  Metalsmith(__dirname)
    .source(srcDir)

    .use(ignore([
      'assets/css/*',
      'assets/js/*',
      'templates/*',
    ]))

    .use(markdown())

    .use(permalinks({
      pattern: ':title'
    }))

    .use(templates({
      engine: 'swig',
      directory: srcDir + '/templates'
    }))

    .clean(false)

    .destination(distDir)
    .build(function(err, files) {
      if (err)
        return gutil.log(err);
    })
});

//
// Stylesheets
//
gulp.task('styles', function (cb) {
  gulp
    .src([
      srcDir + '/assets/css/bootstrap.min.css',
      srcDir + '/assets/css/font-awesome.min.css',
      srcDir + '/assets/css/animate.css',
      srcDir + '/assets/css/*.css',
    ])
    .pipe(concat('main.css'))
    .pipe(gulp.dest(distDir + '/assets/css'))
    .on('end', cb)
});

//
// Scripts
//
gulp.task('scripts', function (cb) {
  gulp
    .src([
      srcDir + '/assets/js/jquery.min.js',
      srcDir + '/assets/js/bootstrap.min.js',
      srcDir + '/assets/js/*.js',
    ])
    .pipe(concat('main.js'))
    .pipe(gulp.dest(distDir + '/assets/js'))
    .on('end', cb)
});
