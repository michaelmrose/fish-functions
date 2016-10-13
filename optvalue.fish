function optvalue
	set option $argv[1]
  set default $argv[2]
  set list $argv[3..-1]
  set res (getopts $list | grep "^$option " | cut -d ' ' -f2)
  if exists $res
    echo $res
  else
    echo $default
  end
end
