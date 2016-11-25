function slink
	set target (echo $argv | cut -d = -f2)
  set name (echo $argv | cut -d = -f1)
  if test -e $target
    if test -L $name
      rm $name
    end
    ln -s $target $name
  else
    return 1
  end
end
