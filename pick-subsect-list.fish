function pick-subsect-list
	set list $argv
  set choice (rfi match "select start: " $argv)
  set start (findindex $choice $list)
  set choice (rfi match "select end: " $argv[$start..-1])
  set end (findindex $choice $list)
  echo start is $start and end is $end
  println $list[start..end]
end
