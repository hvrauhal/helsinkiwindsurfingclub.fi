#!/bin/bash
set -e
jekyll --no-auto --safe --no-server
rsync -avz --delete -e ssh _site/ helsinkiwindsurfingclub.fi:public_html
