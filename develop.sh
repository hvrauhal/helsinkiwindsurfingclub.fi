#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

if ! ruby -e 'exit(RUBY_VERSION >= "3.1" ? 0 : 1)'; then
  echo "Ruby $(ruby -v) is too old (macOS system Ruby does not work)." >&2
  echo "Install the version in .ruby-version, e.g.: brew install rbenv ruby-build && rbenv install && eval \"\$(rbenv init - bash)\"" >&2
  exit 1
fi

bundle install
bundle exec jekyll serve --watch
