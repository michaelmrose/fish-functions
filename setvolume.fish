function setvolume
	if echo $argv | ag  '^\+|-' > /dev/null
    set vol (bounded (wcalc -q (ponymix get-volume)$argv) 0 130)
  else
    set vol (bounded $argv 0 150)
  end
  ponymix set-volume $vol
  signal-i3blocks output
end
