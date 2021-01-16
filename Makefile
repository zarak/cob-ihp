ifneq ($(wildcard IHP/.*),)
IHP = IHP/lib/IHP
else
IHP = $(shell dirname $$(which RunDevServer))/../lib/IHP
endif

#CSS_FILES += ${IHP}/static/vendor/bootstrap.min.css
CSS_FILES += ${IHP}/static/vendor/flatpickr.min.css
CSS_FILES += static/app.css
CSS_FILES += static/font-awesome/all.min.css

JS_FILES += ${IHP}/static/vendor/jquery-3.2.1.slim.min.js
JS_FILES += ${IHP}/static/vendor/timeago.js
JS_FILES += ${IHP}/static/vendor/popper.min.js
JS_FILES += ${IHP}/static/vendor/flatpickr.js
JS_FILES += ${IHP}/static/helpers.js
JS_FILES += ${IHP}/static/vendor/morphdom-umd.min.js
JS_FILES += ${IHP}/static/vendor/turbolinks.js
JS_FILES += ${IHP}/static/vendor/turbolinksInstantClick.js
JS_FILES += ${IHP}/static/vendor/turbolinksMorphdom.js
JS_FILES += static/app.js

include ${IHP}/Makefile.dist

tailwind-dev:
	ls tailwind/*.css|NODE_ENV=development entr npx tailwindcss build tailwind/app.css -o static/app.css -c tailwind/tailwind.config.js

static/app.css:
	NODE_ENV=production npm ci
	NODE_ENV=production npx tailwindcss build tailwind/app.css -o static/app.css -c tailwind/tailwind.config.js

pgcli:
	pgcli -h $$PWD/build/db -d app
