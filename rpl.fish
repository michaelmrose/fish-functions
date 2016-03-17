function rpl
	set com $argv[1] \| sed \'s/$argv[2]/$argv[2]/g\'
  eval $com
end
