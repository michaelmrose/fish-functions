# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 2
function m
		if exists $argv
				videos.clj $argv
				# vids $argv
		else
				select (cat ~/playlists/recent.m3u)|all o
		end
end
