function dr
	if test -f $argv
    set dir (echo $argv | rev | cut -d / -f2- | rev)
	else if test -d $argv
    set dir $argv
  else if bmark $argv > /dev/null
    set dir (bmark $argv) > /dev/null
  else
    set dir (autojump $argv) > /dev/null
  end
  echo $dir
end
