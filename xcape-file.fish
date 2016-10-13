function xcape-file
	killall xcape

	set file $argv[-1]

  if not test -f $file
    echo not a file
    return 1
  end

  set timeout (optvalue t 500 $argv) #val default
	eval xcape -t $timeout -e \'(cat $file | condense_lines | sed 's/ /;/g')\'
end
