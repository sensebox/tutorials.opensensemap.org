#!/bin/bash
docker run --rm -it -v /home/jan/Documents/workspace/openSenseLab/tutorials.opensensemap.org:/srv/jekyll -p 4000:4000 -p 35729:35729 jekyll/jekyll:3.8.6 jekyll serve --livereload