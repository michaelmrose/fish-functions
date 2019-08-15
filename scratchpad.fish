# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 107
function scratchpad
	switch $argv
        case "show"
            i3 scratchpad show
            float_fullscreen
        case "hide"
            i3 scratchpad show
  end
end
