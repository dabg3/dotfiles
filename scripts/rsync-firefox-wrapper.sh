#!/bin/sh
rsync -r --prune-empty-dirs --include-from=rsync-firefox-includes ~/.mozilla/firefox/ ~/.mozilla/firefox/
