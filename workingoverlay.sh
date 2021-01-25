ffmpeg -i bbb.mp4 -i kdsk.jpg \
-filter_complex "[0:v][1:v] overlay=25:25:enable='between(t,0,20)'" \-pix_fmt yuv420p -c:a copy \
output.mp4

