# Defined in /home/michael/.config/fish/buffer/setvolume.fish @ line 2
function setvolume
	set vol (ponymix get-volume)
  if echo $argv | ag '^\+|-' > /dev/null
	  set vol (bounded (wcalc -q "$vol $argv") 0 150)
  else
    set vol $argv
  end
  echo $vol
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
