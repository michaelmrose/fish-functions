function game-mode
	switch $argv
        case "on"
            killall compton
            switchconfig single
            toggle-shift-keys
            wp scale
            set -U game_mode on
        case "off"
            compton &
            switchconfig dual
            toggle-shift-keys
            wp scale
            set -U game_mode off
        case "toggle"
            if match $game_mode on
                game-mode off
            else
                game-mode on
            end
        end
end
