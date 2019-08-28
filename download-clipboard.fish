# Defined in /home/michael/.config/fish/buffer/download-clipboard.fish @ line 1
function download-clipboard
	set target \'(xclip -o -sel clip)\'
    cd ~/youtube-dl
    youtube-dl $target
end
