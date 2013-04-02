#!/bin/bash
set -e
jekyll --no-auto --no-server
rsync -avz --delete -e ssh _site/ helsinkiwindsurfingclub.fi:public_html
