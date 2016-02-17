function recent-videos
	set entry (extract-url-from-entry (rfi match "pick video" (println $recent_videos)))
    eval mpv $entry
end
