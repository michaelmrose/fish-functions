function move-floating-window2
	set arg (squish $argv)
	set border (math (get-border-floating) + 1)
  set xoff (get-focused-display-x-offset)
  set yoff (get-focused-display-y-offset)
  set dwidth (get-focused-display-width)
  set dheight (get-focused-display-height)
  set winwidth (get-window-width)
  set winheight (get-window-height)
  set halfwinwidth (math $winwidth / 2)
  set halfwinheight (math $winheight / 2)
  set halfdispwidth (math $dwidth / 2)
  set halfdispheight (math $dheight / 2)
  set barheight (get-bar-height)
  set availableheight (math $dheight - $barheight)
  set ycenter (math $availableheight / 2 + $yoff) 
  set xcenter (math $dwidth / 2 + $xoff)
  switch $argv
    case center
      set xpos (math $xcenter - $halfwinwidth)
      set ypos (math $ycenter - $halfwinheight)
    case topleft
      set xpos (math $xoff + $border)
      set ypos (math $yoff + $border)
    case top
      set xpos (math $xoff + $halfdispwidth - $halfwinwidth)
      set ypos (math $yoff + $border)
    case topright
      set xpos (math $xoff  + $dwidth - $winwidth - $border)
      set ypos (math $yoff + $border)
    case right
     set xpos (math $xoff + $dwidth - $winwidth - $border)
     set ypos (math $ycenter - $halfwinheight)
    case bottomright
     set xpos (math $xoff + $dwidth - $winwidth - $border)
     set ypos (math $dheight - \($border + $barheight + $winheight\))
    case bottom
     set xpos (math $xoff + $halfdispwidth - $halfwinwidth)
     set ypos (math $dheight - \($border + $barheight + $winheight\))
    case bottomleft
     set xpos (math $xoff + $border)
     set ypos (math $dheight - \($border + $barheight + $winheight\))
    case left
     set xpos (math $xoff + $border)
     set ypos (math $ycenter - $halfwinheight)
  end
 xdotool getactivewindow windowmove  $xpos $ypos
end
