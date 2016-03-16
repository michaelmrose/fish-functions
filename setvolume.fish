function setvolume
	# ponymix (match-lists (car $argv) "+ -" "increase decrease" set-volume) (stripsign $argv)
  set vol (ponymix get-volume)
  set newvol (wcalc -q "$vol + $argv")
  ponymix (set-volume $newvol)
  signal-i3blocks output
end
