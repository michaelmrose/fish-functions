function endswith-special
	set chars (explode $argv[1])
  set end (sizeof $arg[2..-1])
  set matching (echo $argv[2] | cut -c$end)
  for c in $chars
    if [ $c = $matching ]
      return 0
    end
  end
  return 1
end
