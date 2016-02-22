function m
	if not exists $argv
    m $LAST_PLAYLIST
  else
    switch $argv[1]
      case -s
        m (pick-subsect-list $LAST_PLAYLIST)
      case '*'
        for i in $argv
          set acc $acc (pathof $i)
        end
        set -U LAST_PLAYLIST $acc
        umpv $argv
      end
    end
end
