#!/usr/bin/env bash
# exit on error
set -o errexit
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
DISABEL_DATABASE_ENVIROMENT_CHECK=1 bundle exec rails db:migrate:reset
bundle exec rails db:migrate