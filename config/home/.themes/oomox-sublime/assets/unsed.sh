#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#070e14/g' \
         -e 's/rgb(100%,100%,100%)/#dfdfdf/g' \
    -e 's/rgb(50%,0%,0%)/#0d1a26/g' \
     -e 's/rgb(0%,50%,0%)/#a2ba00/g' \
 -e 's/rgb(0%,50.196078%,0%)/#a2ba00/g' \
     -e 's/rgb(50%,0%,50%)/#0d1a26/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#0d1a26/g' \
     -e 's/rgb(0%,0%,50%)/#dfdfdf/g' \
	$@
