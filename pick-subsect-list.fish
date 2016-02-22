function pick-subsect-list
	set list $argv
  set choice (rfi match "select start: " $argv)
  set start (findindex $choice $list)
  set end (rfi match "select end: " $argv[$start..-1])
  set end (findindex $choice $list)
  println $list[start..end]
end
