# Defined in /home/michael/.config/fish/buffer/download-clipboard_download-fr.fish @ line 8
function download-from-url
	cd ~/youtube-dl
    youtube-dl --no-playlist $argv
end
