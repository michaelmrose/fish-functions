function rpl
	set com echo $argv[1] \| sed \'s/$argv[2]/$argv[3]/g\'
  eval $com
end
