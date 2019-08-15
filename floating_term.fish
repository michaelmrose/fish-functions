# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 2
function floating_term
	eval $TERMINAL &
    sleep 0.25
    float_fullscreen
    i3 move scratchpad
end
