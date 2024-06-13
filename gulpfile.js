const gulp = require('gulp');
const shell = require('gulp-shell');
const watch = require('gulp-watch');

gulp.task('build', shell.task(['pretext build web']));

gulp.task('watch', () => {
  watch('**/*.ptx', gulp.series('build'));
});

gulp.task('default', gulp.series('build', 'watch'));
