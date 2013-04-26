#!/bin/bash
set -e
bundle exec jekyll --no-auto --no-server
rsync -avz --delete -e ssh .htaccess _site/ ssh.helsinkiwindsurfingclub.fi:public_html
