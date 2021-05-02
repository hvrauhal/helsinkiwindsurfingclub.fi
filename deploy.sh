#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

bundle exec jekyll build
echo "Sit vaan sftp:llä kopioit _site/:n sisällön osoitteeseen helsinkiwi@helsinkiwindsurfingclub.fi:public_html"

# rsync -avz --delete -e ssh _site/ helsinkiwi@helsinkiwindsurfingclub.fi:public_html
