# Defined in /usr/home/michael/.config/fish/buffer/v.fish @ line 2
function v
	# find-video $argv | select | all mpv &
    select (cat ~/playlists/recent.m3u)|all o
end
