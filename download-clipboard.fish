# Defined in /home/michael/.config/fish/buffer/download-clipboard.fish @ line 2
function download-clipboard
	set target (xclip -o -sel clip)
  cd ~/youtube-dl
  youtube-dl $target
end
