#!/bin/sh -l

xmllint --format "$1" --output /__formatted.xml

cmp --silent "$1" /__formatted.xml
NEEDED_FORMATTING=$?

mv /__formatted.xml "$1"

exit $NEEDED_FORMATTING
