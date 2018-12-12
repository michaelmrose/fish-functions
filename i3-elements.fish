# Defined in /home/michael/.config/fish/buffer/i3-elements.fish @ line 2
function i3-elements
	set i3_bar_ids (p (xwininfo -all -root)|grep i3bar| condense_spaces | cut -d " " -f1)
  set i3_frame_ids (xwininfo -all -root | grep i3-frame | grep 'has no name' | trim | cut -d ' ' -f1)
  set ids $i3_bar_ids $i3_frame_ids
  switch $argv[1]
    case trans
        set val 0.76
      case hide
      set val 0
    case show
      set val 1.0
    case ids
      echo $i3_bar_ids $i3_frame_ids
      return 0
  end
  for id in $ids
    transset -i $id $val > /dev/null
  end
end
