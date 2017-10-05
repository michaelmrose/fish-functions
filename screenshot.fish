# Defined in /home/michael/.config/fish/buffer/screenshot.fish @ line 2
function screenshot
	switch (count $argv)
    case 1
      set target ~/screenshots/(preferred-date).png
    case 2
      set target $argv[2]
  end
  set xoff (get-focused-display-x-offset)
  set yoff (get-focused-display-y-offset)
  set x (get-window-x-pos)
  set y (get-window-y-pos)
  set w (get-window-width)
  set h (get-window-height)
  set dw (get-focused-display-width)
  set dh (get-focused-display-height)
  switch $argv[1]
    case "everything"
      maim $target
    case "window"
      # maim -x (get-window-x-pos) -y (get-window-y-pos) -w (get-window-width) -h (get-window-height) $target
      maim --geometry={$x}x{$h}+{$x}+{$y} $target
    case "display"
      # maim -x (get-focused-display-x-offset) -y (get-focused-display-y-offset) -w (get-focused-display-width) -h (get-focused-display-height) $target
      maim --geometry={$dw}x{$dh}+{$xoff}+{$yoff} $target
  end
  echo $target
end
