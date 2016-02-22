function reverse-string
	# squish (reverse (explode-word $argv))
  set size (sizeof $argv)
  set cnt $size
  for i in (seq $size)
    set res {$res}(echo $argv | cut -c$cnt)
    echo $cnt
    set cnt (math $cnt - 1)
  end
  echo $res
end
