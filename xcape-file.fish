function xcape-file
	set timeout (getopts $argv | grep '^t ' | cut -d ' ' -f2; or echo 500)
  echo $timeout
  # set file $argv[2]
  # for line in (cat $file)
  #   eval xcape -t $timeout -e $line
  # end
end
