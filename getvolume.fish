function getvolume
	set vol (ponymix get-volume)
  set result {$vol}%
  if ponymix is-muted
    set result \($result\)
  end
  echo $result
end
