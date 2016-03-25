function setvolume
	# ponymix (match-lists (car $argv) "+ -" "increase decrease" set-volume) (stripsign $argv)
  if echo 5 | ag  '^\+|-' > /dev/null
    set vol (ponymix get-volume)
    set newvol (wcalc -q "$vol + $argv")
    if test $newvol -gt 130
      set newvol 130
    end
    if test $newvol -lt 0
      set newvol 0
    end
  else
    set newvol $argv
  end
  ponymix set-volume $newvol
  signal-i3blocks output
end
