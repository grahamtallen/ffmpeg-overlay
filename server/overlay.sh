ffmpeg -listen 1 -i rtmp://localhost:1935/live/app \
    -i ../nightsky.jpg \
    -filter_complex "[1][0]scale2ref[i][v];[v][i]overlay" \
    -c:v libx264 -crf 21 -preset veryfast \
    -c:a aac -b:a 128k -ac 2 \
    -f hls -hls_time 4 -hls_playlist_type event stream.m3u8
