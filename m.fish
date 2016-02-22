function m
	if not exists $argv
    m $LAST_PLAYLIST
  else
    switch $argv[1]
      case -s
        m (pick-subsect-list $LAST_PLAYLIST)
      case -w
        println $LAST_PLAYLIST > ~/playlists/$argv[2]
      case -n
        set list (pick-subsect-list (cat ~/playlists/$argv[2]))
        println $list > ~/playlists/$argv[2]
      case -p
        switch (count $argv)
          case 2
            if test -f ~/playlists/$argv[2]
              m (cat ~/playlists/$argv[2])
            else
              sendit not a playlist
            end
          case 1
            m -p (rfi match "pick a playlist: " (ls ~/playlists))
        end
      case '*'
        for i in $argv
          set acc $acc (pathof $i)
        end
        set -U LAST_PLAYLIST $acc
        umpv $argv
      end
    end
end
