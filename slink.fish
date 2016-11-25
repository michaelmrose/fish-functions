function slink
	set target (echo $argv | cut -d = -f2)
  set name (echo $argv | cut -d = -f1)
  if test -f $name
    echo rm $name
  end
  if test -d $name
    echo rm $name
  end

  echo ln -s $target $name
end
