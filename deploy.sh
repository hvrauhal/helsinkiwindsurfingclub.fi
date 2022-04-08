#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

bundle exec jekyll build
cat << EOF
Deploy onnistuu kopioimalla _site/:n sisältö osoitteeseen
helsinkiwi@helsinkiwindsurfingclub.fi:public_html scp:llä:

  scp -r _site/* helsinkiwi@helsinkiwindsurfingclub.fi:public_html

Kohteeseen ei saa ssh-avaimia, vaan on pakko käyttää salasanaa.
EOF


# rsync -avz --delete -e ssh _site/ helsinkiwi@helsinkiwindsurfingclub.fi:public_html
