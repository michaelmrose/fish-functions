function move-floating-window
	set border (math (get-border-floating) + 1)
  set xoff (get-focused-display-x-offset)
  set yoff (get-focused-display-y-offset)
  set dwidth (get-focused-display-width)
  set dheight (get-focused-display-height)
  set winwidth (get-window-width)
  set winheight (get-window-height)
  switch $argv[1]
    case top
      set ypos (math $yoff + $border)
      switch $argv[1]
        case left
          set xpos (math $xoff + $border)
        case right
          set xpos (math $xoff  + $dwidth - $winwidth - $border)
        case center
          nil
      end
  end
  xdotool getactivewindow windowmove  $xpos $ypos
end
