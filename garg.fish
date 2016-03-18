function garg
	switch $argv
    case last
      set game $LAST_GAME
    case select
       switch (count $argv)
         case 1
          set game (ls ~/if)
         case '*'
          set games (ls ~/if | grep -i $argv[2..-1])
        end
  end
	set game (rfi match "select a game: " $games)
  set -U LAST_GAME $game
  gargoyle ~/if/$game
end
