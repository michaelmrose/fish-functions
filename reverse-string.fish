function reverse-string
	# squish (reverse (explode-word $argv))
  set size (sizeof $argv)
  set cnt $size
  set res ""
  for i in (seq $size)
    set c (echo $argv | cut -c$cnt)
    set res (echo $res$c)
    set cnt (math $cnt - 1)
  end
  echo $res
end
