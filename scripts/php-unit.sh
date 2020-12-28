#!/bin/sh

php /app/vendor/bin/phpunit -c /app/docroot/core/phpunit.xml.dist $1 --debug -v
