#!/bin/bash
set -e
jekyll --no-auto --safe --no-server
scp -r _site/* helsinkiwindsurfingclub.fi:public_html/
