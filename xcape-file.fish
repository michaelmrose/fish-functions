function xcape-file
	set timeout $argv[1]
  set file $argv[2]
  for line in (cat $file)
    eval xcape -t $timeout -e $line
  end
end
