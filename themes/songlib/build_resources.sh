
sassc --sourcemap --style=compressed resources/site.scss static/css/theme.css
cp -R resources/bootstrap-sass-3.3.6/fonts/bootstrap static/fonts/
cp -R resources/font-awesome-4.6.3/fonts/ static/fonts/font-awesome/
cat resources/jquery-2.2.4.min.js resources/bootstrap-sass-3.3.6/javascripts/bootstrap.min.js > static/js/combined.min.js
