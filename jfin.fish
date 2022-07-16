function jfin
         chromium --app=http://localhost:8096 &
		 if not exists $argv
			restart jellyfin-mpv-shim
		 end
end
