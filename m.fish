# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 2
function m
		if exists $argv
				switch $argv[1]
						case recent
								select (cat ~/playlists/recent.m3u)|all o
						case playlists
								p ~/playlists/mpv/*|select|each mpv
						case '*'
								videos.clj $argv
				end
		else
				# select (cat ~/playlists/recent.m3u)|all o
				p ~/playlists/mpv/*|select|each mpv
		end
end
