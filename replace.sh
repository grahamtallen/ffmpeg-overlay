ffmpeg -i bbb.mp4 -i kdsk.jpg \                                ─╯
-filter_complex "[1][0]scale2ref[i][v];[v][i]overlay" \
-pix_fmt yuv420p -c:a copy \
output.mp4

