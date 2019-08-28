# Defined in /home/michael/.config/fish/buffer/download-clipboard_download-fr.fish @ line 2
function download-clipboard
	set target (xclip -o -sel clip)
  cd ~/youtube-dl
  youtube-dl --no-playlist $target
end
