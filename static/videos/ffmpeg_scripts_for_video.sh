# Just notes on how these videos were generated
# Step 1: Generate video from original ad video using cut list provided (CSV)
# Step 2: Run this script with FFMPEG installed in order to crop and transcode video

# Original command
#ffmpeg -i 'Jovanka Beckles for AC Transit Board-r8R0xNdyszI-cut-merged-1611704472808.mp4'  -filter:v "crop=in_w:in_h-512" -f webm -vcodec libvpx-vp9 -vb 256k jb_video_reenc.webm

# Stripping audio for FFX compat (adds -an)
#ffmpeg -i 'Jovanka Beckles for AC Transit Board-r8R0xNdyszI-cut-merged-1611704472808.mp4'  -filter:v "crop=in_w:in_h-512" -f webm -vcodec libvpx-vp9 -vb 256k -an jb_video_reenc.webm

# ------------

# For modern browsers
#ffmpeg -i 'Jovanka Beckles for AC Transit Board-r8R0xNdyszI-cut-merged-1614378494208.mp4'  -filter:v "crop=in_w:in_h-512" -f webm -vcodec libvpx-vp9 -vb 256k -movflags +faststart -an jb_video_background.webm

# For Safari on macOS users
ffmpeg -i 'Jovanka Beckles for AC Transit Board-r8R0xNdyszI-cut-merged-1614378494208.mp4' -filter:v "crop=in_w:in_h-512" -s hd720 -vcodec libx264 -pix_fmt yuv420p -c:v libx264 -profile:v main -crf 28 -an -movflags +faststart  jb_video_background__safari.mp4


