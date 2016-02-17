function add-to-recent-backgrounds
	set -U recent_backgrounds (take 30 (unique (filter-with-expr is-an-image (existing-files (println $argv $recent_backgrounds)))))
end
