function xcape-file
	set timeout (getopts $argv | grep '^t ' | cut -d ' ' -f2)
  if not exists $timeout
    set timeout 500
  end
  set file $argv[-1]
  for line in (cat $file)
    echo eval xcape -t $timeout -e \'$line\'
  end
end
