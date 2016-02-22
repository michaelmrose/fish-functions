function pick-subsect
	set choice (rfi match "select start: " (subsect $argv))
  set start (findindex $choice $files)
	set choice (rfi match "select start: " (subsect $argv $start))
  set end (findindex $choice $files)
  subsect $argv $start $end
end
