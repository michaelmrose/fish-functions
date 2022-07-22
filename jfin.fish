function jfin
         chromium --app=http://localhost:8096 &
		 sleep 0.5
		 if not exists $argv
			restart jellyfin-mpv-shim
		 end
end
