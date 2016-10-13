function xcape-file
	eval xcape -t 250 -e \'(condense_lines (cat xcapes) | sed 's/ /;/g')\'
	# set target $argv[-1]
	# set timeout (getopts $argv | grep '^t ' | cut -d ' ' -f2)
  # if not exists $timeout
    # set timeout 500
  # end
  # if test -f $target
    # killall xcape
    # for line in (cat $target)
      # eval xcape -t $timeout -e \'$line\'
    # end
  # else
    # xcape -t $timeout -e "$target"
  # end
end
