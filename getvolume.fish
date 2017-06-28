function getvolume
	set vol (ponymix get-volume)
  if test $vol -lt 100
    set vol 0{$vol}
  end
  
  set result {$vol}%
  if ponymix is-muted
    set result \($result\)
  end
  echo $result
end
