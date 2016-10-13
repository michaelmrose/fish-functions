function optvalue
	set option $argv[1]
  set default $argv[2]
  set list $argv[3..-1]
  getopts $list | grep "^$option " | cut -d ' ' -f2;or echo $default
end
