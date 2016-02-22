function m
	if not exists $argv
    m $LAST_PLAYLIST
  else
    set -U LAST_PLAYLIST $argv
    umpv $argv
  end
end
