'use strict';

const gulp = require('gulp');
const sass = require('gulp-sass');
const sourcemaps = require('gulp-sourcemaps');
const pump = require('pump');
const uglify = require('gulp-uglify-es').default;

gulp.task('default', function() {
    ;
});

gulp.task('sass', function () {
    return gulp.src('../assets/styles/**/*.scss')
        .pipe(sourcemaps.init())
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        .pipe(sourcemaps.write('maps/'))
        .pipe(gulp.dest('../static/dist'));
});

gulp.task('uglify', function (cb) {
    pump([
        gulp.src('../assets/scripts/*.js'), 
        uglify(), gulp.dest('../static/dist')], 
        cb);
});

gulp.task('watch', function () {
    gulp.watch('../assets/styles/**/*.scss', gulp.series('sass'));
    gulp.watch('../assets/scripts/*.js', gulp.series('uglify'));
});
