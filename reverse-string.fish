function reverse-string
	# squish (reverse (explode-word $argv))
  set size (sizeof $argv)
  set cnt $size
  for i in (seq $size)
    set c (echo $argv | cut -c$cnt)
    set res $res$c
    echo c is $c
    echo $cnt
    set cnt (math $cnt - 1)
  end
  echo $res
end
