function pick-subsect
	set files (subsect $argv 1..-1)
	set choice (rfi match "select start: " $files)
  set start (findindex $choice $files)
  echo start is $start
  set choice (rfi match "select end: " (subsect $argv $start..-1))
  set end (findindex $choice $files)
  subsect $argv $start $end
end
