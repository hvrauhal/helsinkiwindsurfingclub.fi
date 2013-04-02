#!/bin/bash
set -e
bundle exec jekyll --no-auto --no-server
rsync -avz --delete -e ssh _site/ helsinkiwindsurfingclub.fi:public_html
