function xcape-file
	killall xcape
	set file $argv[-1]
  if count $argv -gt 1
    set options $argv
  end
  
  if not test -f $file
    echo not a file
    return 1
  end

  set timeout (optvalue t 500 $options)
	# set timeout (getopts $argv | grep '^t ' | cut -d ' ' -f2)
  # if not exists $timeout
    # set timeout 500
  # end

	eval xcape -t $timeout -e \'(condense_lines (cat $file) | sed 's/ /;/g')\'
  # if test -f $target
    # killall xcape
    # for line in (cat $target)
      # eval xcape -t $timeout -e \'$line\'
    # end
  # else
    # xcape -t $timeout -e "$target"
  # end
end
