function garg
	set games (endsin z5 z3 gblorb ~/if)
  switch $argv[1]
      case select
            p $games | all select | each gargoyle
        case search
            p $games | g $argv[2..-1] | all select | each gargoyle
      case open
            set -U LAST_GAME $argv[2]
            gargoyle $argv[2]
        case last
            gargoyle $LAST_GAME
    end
end
