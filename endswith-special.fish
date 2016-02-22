function endswith-special
	set com echo \'$argv[2..-1]\' \| ag \'$argv[1]\$\' \> /dev/null
  eval $com
end
