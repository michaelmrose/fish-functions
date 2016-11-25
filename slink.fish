function slink
	set target (echo $argv | cut -d = -f2)
  set name (echo $argv | cut -d = -f1)
  if test -f $name
    echo $name will be removed
    if read_confirm
      echo rm $name
    end
  end

  echo ln -s $target $name
end
