# Defined in /home/michael/.config/fish/buffer/prune-desktop-screenshots_scre.fish @ line 15
function screenshot
	switch (count $argv)
    case 1
      set target ~/screenshots/(preferred-date).png
    case 2
      set target $argv[2]
  end
  switch $argv[1]
    case "everything"
      maim $target
    case "window"
      maim -x (get-window-x-pos) -y (get-window-y-pos) -w (get-window-width) -h (get-window-height) $target
    case "display"
      maim -x (get-focused-display-x-offset) -y (get-focused-display-y-offset) -w (get-focused-display-width) -h (get-focused-display-height) $target
  end
  echo $target
end
