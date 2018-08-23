# Defined in /home/michael/.config/fish/buffer/add-to-recent-reads.fish @ line 2
function add-to-recent-reads --description 'keep a list of the 10 most recent unique items opened via this script'
	if exists $argv
      msg argv is $argv
      set title $argv
      # set library (get-current-calibre-library)
      # set entry \"$title @$library\"
      set -U recent_reads (take 15 (unique (println "$title" $recent_reads)))
      echo \"$title\"
    else
        msg could not add to recent reads
        return 1
    end
end
