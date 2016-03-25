function setvolume
	# ponymix (match-lists (car $argv) "+ -" "increase decrease" set-volume) (stripsign $argv)
  if echo 5 | ag  '^\+|-' > /dev/null
    echo if true
    set vol (ponymix get-volume)
    set newvol (wcalc -q "$vol + $argv")
  else
    set newvol $argv
  end
  ponymix set-volume $newvol
  signal-i3blocks output
end
