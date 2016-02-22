function m
	if not exists $argv
    m $LAST_PLAYLIST
  else
    for i in $argv
      set acc $acc (pathof $i)
    end
    set -U LAST_PLAYLIST $acc
    umpv $argv
  end
end
