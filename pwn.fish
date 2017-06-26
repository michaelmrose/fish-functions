function pwn
	set owner $argv[1]
  set target $argv[2]
  if test -f $target
    set optional ""
  else if test -d $target
    set optional "-R "
  else
    echo invalid argument
    return 1
  end

  sudo chown {$optional}$owner:$owner $target
end
