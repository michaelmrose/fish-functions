function setvolume
	set current (ponymix get-volume)
	if echo $argv | ag  '^\+' > /dev/null
    set vol (greaterof $current (bounded (wcalc -q {$current}$argv) 0 130))
   # threadf set vol (wcalc -q {current}$argv) 
   #         bounded 0 130
   #         greaterof $current
  else if echo $argv | ag '^-' > /dev/null
    set vol (wcalc -q {$current}$argv)
  else
    set vol (bounded $argv 0 150)
  end
  ponymix set-volume $vol
  signal-i3blocks output
end
