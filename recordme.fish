function recordme
ffmpeg \
  -f v4l2 -i /dev/video0 \
  -f pulse -i default \
  -t 00:05:00 \
  -c:v libx265 -preset ultrafast \
  -c:a aac \
  "recording_$(date +%Y-%m-%d_%H-%M-%S).mp4"
end
