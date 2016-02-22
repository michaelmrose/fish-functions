function pick-subsect
	set files (subsect $argv)
	set choice (rfi match "select start: " (subsect $argv))
  set start (findindex $choice $files)
  set choice (rfi match "select end: " (subsect $argv $start))
  set end (findindex $choice $files)
  subsect $argv $start $end
end
