# Defined in /home/michael/.config/fish/buffer/get-display-order.fish @ line 2
function get-display-order
	set outputs (xrandr | grep " connected" | cut -d " " -f1)
  set ordered (get-display-left-to-right)
    for i in $outputs
        math (findindex $i $ordered) - 1
    end
end
