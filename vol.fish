function vol
	# ponymix set-volume (bounded ( returnormodifyvalue (ponymix get-volume) $argv) 0 150)
  ponymix $argv
  signal-i3blocks output &
	# set vol (ponymix get-volume)
  # if echo $argv | ag '^\+|-' > /dev/null
	#   set vol (bounded (wcalc -q "$vol $argv" | trim) 0 150)
  # else
  #   set vol $argv
  # end
  # echo $vol
	# set current (ponymix get-volume)
	# if echo $argv | ag  '^\+' > /dev/null
  #   set vol (greaterof $current (bounded (wcalc -q {$current}$argv) 0 150))
  #  # threadf set vol (wcalc -q {current}$argv) 
  #  #         bounded 0 130
  #  #         greaterof $current
  # else if echo $argv | ag '^-' > /dev/null
  #   set vol (wcalc -q {$current}$argv)
  # else
  #   set vol (bounded $argv 0 180)
  # end
  # ponymix set-volume $vol
  # signal-i3blocks output
end
