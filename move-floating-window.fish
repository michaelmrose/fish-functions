function move-floating-window
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
  switch $argv[1]
    case top
      set ypos (math $yoff + $border)
      switch $argv[2]
        case left
          set xpos (math $xoff + $border)
        case right
          set xpos (math $xoff  + $dwidth - $winwidth - $border)
        case center
          set xpos (math $xoff + $halfdispwidth - $halfwinwidth)
      end
     case bottom
       set ypos (math $dheight - \($border + $barheight + $winheight\))
       switch $argv[2]
         case left
           set xpos (math $xoff + $border)
         case right
           set xpos (math $xoff + $dwidth - $winwidth)
         case center
           set xpos (math $xoff + $halfdispwidth - $halfwinwidth)
       end
     case left
       set ypos (math $ycenter - $halfwinheight)
       set xpos (math $xoff + $border)
     case right
       set ypos (math $ycenter - $halfwinheight)
       set xpos (math $xoff + $dwidth - $winwidth - $border)
       # set xpos (math $xcenter - $halfwinwidth - $border)
   end
   echo xy $xpos $ypos
  xdotool getactivewindow windowmove  $xpos $ypos
end
