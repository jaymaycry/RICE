#!/bin/sh
sed -i \
         -e 's/#070e14/rgb(0%,0%,0%)/g' \
         -e 's/#dfdfdf/rgb(100%,100%,100%)/g' \
    -e 's/#0d1a26/rgb(50%,0%,0%)/g' \
     -e 's/#a2ba00/rgb(0%,50%,0%)/g' \
     -e 's/#0d1a26/rgb(50%,0%,50%)/g' \
     -e 's/#dfdfdf/rgb(0%,0%,50%)/g' \
	$@
