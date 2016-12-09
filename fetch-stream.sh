#!/bin/bash

START=$(date +%s)

echo "Starting Stream from https://www.youtube.com/watch?v=Vy8tIxX-JeM 720p";
livestreamer https://www.youtube.com/watch?v=Vy8tIxX-JeM 720p -O | \
ffmpeg-source/ffmpeg -re -i - -i assets/poweredby-alikhan.png -filter_complex "overlay=5:5" \
-f h264 -vcodec libx264 -preset medium -crf 18 udp://127.0.0.1:33333

END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Execution Time: $DIFF seconds"


