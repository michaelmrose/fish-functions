function reverse-string
	# squish (reverse (explode-word $argv))
  set size (sizeof $argv)
  set cnt $size
  for i in (seq $size)
    set res $res(echo $argv | cut -c$cnt)
    set cnt (math $cnt - 1)
    echo $cnt
  end
  echo $res
end
