function pick-subsect
	set files (subsect $argv)
	set choice (rfi match "select start: " $files)
  set start (findindex $choice $files)
	set choice (rfi match "select start: " $files)
  set end (findindex $choice $files)
  subsect $argv $start $end
end
