#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

bundle install
bundle exec jekyll serve --watch

