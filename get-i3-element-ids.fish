function get-i3-element-ids
	set i3_bar_ids (xwininfo -all -root | grep 'i3bar for output' | condense_spaces | cut -d " " -f1)
  set i3_frame_ids (xwininfo -all -root | grep i3-frame | grep 'has no name' | trim | cut -d ' ' -f1)
  echo $i3_bar_ids $i3_frame_ids
end
