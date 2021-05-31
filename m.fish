# Defined in /usr/home/michael/.config/fish/buffer/m_pl.fish @ line 2
function m
		if exists $argv
				vids $argv
		else
				select (cat ~/playlists/recent.m3u)|all o
		end
end
