ffmpeg -re -stream_loop 20 -i $1 -c:a mp3 -b:a 128k -f flv "rtmp://localhost:1935/live/app"

