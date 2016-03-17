function rpl
	set com echo $argv[1] \| sed \'s/$argv[2]/$argv[3]/g\'
  echo $com
end
