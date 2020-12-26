#!/bin/sh

php /app/docroot/vendor/bin/phpunit -c /app/phpunit.xml $1 --debug -v
