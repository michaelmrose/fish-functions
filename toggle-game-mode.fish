function toggle-game-mode
  switch count (get-connected-displays)
        case 1
            game-mode off
        case 2
            game-mode on
    end
end
