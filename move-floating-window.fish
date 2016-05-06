function move-floating-window
	set border (math (get-border-floating) + 1)
  set xoff (get-focused-display-x-offset)
  set yoff (get-focused-display-y-offset)
  set dwidth (get-focused-display-width)
  set dheight (get-focused-display-height)
  set winwidth (get-window-width)
  set winheight (get-window-height)
  set halfwin (math $winwidth / 2)
  set halfdisp (math $dwidth / 2)
  set availableheight (math $dheight - (get-bar-height))
  set ycenter (math $availableheight / 2 + $yoff) 
  switch $argv[1]
    case top
      set ypos (math $yoff + $border)
      switch $argv[2]
        case left
          set xpos (math $xoff + $border)
        case right
          set xpos (math $xoff  + $dwidth - $winwidth - $border)
        case center
          set xpos (math $xoff + $halfdisp - $halfwin)
      end
     case bottom
     case left
       set ypos (math $ycenter + $halfwin)
       set xpos (math $xoff + $border)
       echo xpos ypos $xpos $ypos
       echo yc $ycenter ah $availableheight hw $halfwin
     case right
   end
  xdotool getactivewindow windowmove  $xpos $ypos
end
