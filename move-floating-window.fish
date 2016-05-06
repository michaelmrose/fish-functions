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
      switch $argv[2]
        case left
          set xpos (math $xoff + $border)
        case right
          set xpos (math $xoff  + $dwidth - $winwidth - $border)
        case center
          set halfwin (math $winwidth / 2)
          set halfdisp (math $dwidth / 2)
          set xpos (math $xoff + $halfdisp - $halfwin)
          echo xpos is $xpos xo is $xoff hw is $halfwin hd is $halfdisp
      end
     case bottom
     case left
       set ypos (math $yoff + $border)
       set xpos $xoff
     case right
   end
  xdotool getactivewindow windowmove  $xpos $ypos
end
