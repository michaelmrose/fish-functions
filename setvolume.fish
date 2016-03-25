function setvolume
	# ponymix (match-lists (car $argv) "+ -" "increase decrease" set-volume) (stripsign $argv)
  if echo 5 | ag  '^\+|-' > /dev/null
    set vol (ponymix get-volume)
    set newvol (bounded (wcalc -q "$vol + $argv") 0 130)
  else
    set newvol $argv
  end
  ponymix set-volume $newvol
  signal-i3blocks output
end
