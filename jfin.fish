function jfin
    # chromium --app=http://localhost:8096 &
    flatpak run com.github.iwalton3.jellyfin-media-player
    pgrep jellyfin-mpv|each kill -9
    sleep 5
    jellyfin-mpv-shim &
end
