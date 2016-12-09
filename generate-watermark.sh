#!/bin/bash

START=$(date +%s)

width=`identify -format %w assets/alikhan.png`; \
convert -background '#0008' -fill white -gravity center -size ${width}x30 \
caption:"Powered By Ali Khan" \
assets/alikhan.png +swap -gravity south -composite  assets/poweredby-alikhan.png

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Watermark Generated Successfully"
echo "Execution Time: $DIFF seconds"


