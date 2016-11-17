function fat
	set com echo ff \'$argv[2..-1]\' \| at $argv[1]
  eval $com
end
