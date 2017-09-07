# Defined in /home/michael/.config/fish/buffer/src.fish @ line 14
function src
	set vals (without-options $argv)
  for v in $vals
    switch (short-type $v)
      case file
        set files $files $v
      case function
        set fns $fns $v
      end
    end
    p $fns
    f $files
end
