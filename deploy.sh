#!/bin/bash
set -e
bundle exec jekyll build
rsync -avz --delete -e ssh _site/ ssh.helsinkiwindsurfingclub.fi:public_html
