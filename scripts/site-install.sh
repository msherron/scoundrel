#!/bin/bash

# Set colors, because I'm fancy.
GREEN='\033[0;32m'
NC='\033[0m'

if [ ! $1 ]; then
  printf "${GREEN}### What install profile do you want to use? (standard):"
  read PROFILE
  PROFILE=${PROFILE:-Standard}
  printf "### ${PROFILE}, coming right up!${NC}\n"
  exit;
fi

drush --root=/app/docroot si $PROFILE --db-url='mysql://drupal9:drupal9@database/drupal9' -y
