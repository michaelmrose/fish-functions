# Defined in /home/michael/.config/fish/buffer/getvolume.fish @ line 2
function getvolume
	  set vol (ponymix get-volume 2> /dev/null)
    if test $vol -lt 100
        set vol " "{$vol}
  end
  
  set result {$vol}%
  if ponymix is-muted 2>/dev/null
      set result \($result\)
  end
  echo $result
end
