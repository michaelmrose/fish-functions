# Defined in /home/michael/.config/fish/buffer/extract-audio.fish @ line 1
function extract-audio
	set in $argv[1]
    set out $argv[2]
    ffmpeg -i $in -vn -acodec copy $out.aac 
end
