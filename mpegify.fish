# Defined in /home/michael/.config/fish/buffer/mpegify.fish @ line 1
function mpegify
    set image $argv[1]
    set audio $argv[2]
ffmpeg -loop 1 -i $image -i $audio -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest out.mp4
end
