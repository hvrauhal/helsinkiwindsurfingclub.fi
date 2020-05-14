#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

bundle exec jekyll build
rsync -avz --delete -e ssh _site/ ssh.helsinkiwindsurfingclub.fi:public_html
