function fm
	if not exists $argv
      dolphin (pwd) &
  else
      dolphin $argv &
  end
end
