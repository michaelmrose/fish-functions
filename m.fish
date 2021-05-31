# Defined in /usr/home/michael/.config/fish/buffer/m.fish @ line 2
function m
		switch $argv[1]
				case recent
						select (cat ~/playlists/recent.m3u)|all o
				case playlists
						p ~/playlists/mpv/*|select|each mpv
				case '*'
						videos.clj $argv
		end
end
