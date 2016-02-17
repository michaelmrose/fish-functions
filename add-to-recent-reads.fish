function add-to-recent-reads --description 'keep a list of the 10 most recent unique items opened via this script'
	if exists $argv
        set title $argv
        # set library (get-current-calibre-library)
        # set entry \"$title @$library\"
        set -U recent_reads (take 10 (unique (println "$title" $recent_reads)))
    else
        msg could not add to recent reads
        return 1
    end
end
