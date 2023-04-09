function jfin
	chromium --app=http://localhost:8096 &
	pgrep jellyfin-mpv|each kill -9
	sleep 5
	jellyfin-mpv-shim &
end
