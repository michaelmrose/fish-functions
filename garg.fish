function garg
	switch $argv[1]
    case last
      set game $LAST_GAME
    case select
      switch (count $argv)
        case 1
          set games (find ~/if -type f | grep -Ei '.*\.Z[0-9]')
          set games (find ~/if -type f | grep -Ei '.*\.Z[0-9]$|.gblorb$')
        case '*'
          set games (find ~/if -type f | grep -Ei '.*\.Z[0-9]$|.gblorb$' | grep -i $argv[2..-1])
      end
      if test (count $games) -gt 1
        set game (rfi match "select a game: " $games)
      else
        set game $games
      end
  end
  if exists $game
    set -U LAST_GAME (pathof $game)
  end
  gargoyle $game
end
