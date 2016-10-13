function xcape-file
	killall xcape

	set file $argv[-1]
  if count $argv -gt 1 > /dev/null
    set options $argv
  end
  
  if not test -f $file
    echo not a file
    return 1
  end

  set timeout (optvalue t 500 $options) #val default

	eval xcape -t $timeout -e \'(cat $file | condense_lines | sed 's/ /;/g')\'
end
