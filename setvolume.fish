function setvolume
	set current (ponymix get-volume)
	if echo $argv | ag  '^\+' > /dev/null
    set vol (bounded (wcalc -q (ponymix get-volume)$argv) 0 130)
    set vol (greaterof $current $vol)
  else if echo $argv | ag '^-' > /dev/null
    set vol (wcalc -q (ponymix get-volume)$argv)
  else
    set vol (bounded $argv 0 150)
  end
  ponymix set-volume $vol
  signal-i3blocks output
end
