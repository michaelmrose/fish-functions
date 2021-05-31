# Defined in /usr/home/michael/.config/fish/buffer/m_pl_v_vids.fish @ line 10
function v
	# find-video $argv | select | all mpv &
    select (cat ~/playlists/recent.m3u)|all o
end
