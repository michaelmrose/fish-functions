function in-dir
	set dir (pwd)
  cd $argv[1]
  ff $argv[2..-1] &
  cd $dir
end
