function invisible-i3-frames
	for id in (get-i3-frame-ids)
    transset -i $id 0
  end
end
