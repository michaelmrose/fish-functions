function setvolume
	if echo $argv | ag  '^\+|-' > /dev/null
    # set vol (ponymix get-volume)
    # set newvol (bounded (wcalc -q "$vol + $argv") 0 130)
    set netvol (bounded (wcalc -q (ponymix get-volume) $argv) 0 130)
  else
    set newvol (bounded $argv 0 150)
  end
  echo $newvol
  # ponymix set-volume $newvol
  # signal-i3blocks output
end
