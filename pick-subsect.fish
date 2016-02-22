function pick-subsect
	set files (subsect $argv 1)
	set choice (rfi match "select start: " $files)
  set start (findindex $choice $files)
	set choice (rfi match "select start: " $files)
  set end (findindex $choice $files)
  echo $start $end
end
