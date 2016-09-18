function add-to-recent-reads-fnames
	if exists $argv
    set -U recent_reads_fnames (take 15 (unique (println "$argv" $recent_reads_fnames)))
    echo \"$argv\"
  else
    msg could not add to recent reads fnames
    return 1
  end
end
