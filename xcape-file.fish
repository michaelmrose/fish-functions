function xcape-file
	killall xcape
	set timeout (getopts $argv | grep '^t ' | cut -d ' ' -f2)
  if not exists $timeout
    set timeout 500
  end
  set file $argv[-1]
  for line in (cat $file)
    eval xcape -t $timeout -e \'$line\'
  end
end
