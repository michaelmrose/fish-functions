function slink
	set target (echo $argv | cut -d = -f2)
  set name (echo $argv | cut -d = -f1)
  if test -f $name
    echo $name will be removed
    if read_confirm
      rm $name
    end
  end

  ln -s $target $name
end
