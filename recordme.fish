function recordme
ffmpeg \
  -f v4l2 -i /dev/video0 \
  -f pulse -i alsa_input.usb-046d_Logi_4K_Stream_Edition_01ED6582-03.analog-stereo \
  -t 00:01:00 \
  -c:v libx265 -preset ultrafast \
  -c:a aac \
  "recording_$(date +%Y-%m-%d_%H-%M-%S).mp4"

end
