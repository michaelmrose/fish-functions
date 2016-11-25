function slink
	set target (echo $argv | cut -d = -f2)
  set name (echo $argv | cut -d = -f1)
  if test -L $name
      rm $name
  end

  ln -s $target $name
end
