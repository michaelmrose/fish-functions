function startswith-special
	set chars (explode $argv[1])
  set matching (echo $argv[2] | cut -c1)
  for c in $chars
    if [ $c = $matching ]
      return 0
    end
  end
  return 1
end
