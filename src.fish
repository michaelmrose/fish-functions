# Defined in /home/michael/.config/fish/buffer/src.fish @ line 2
function src
	set vals (without-options $argv)
  p $vals
  for v in $vals
    echo $v
    #   switch (short-type $v)
    #     case file
    #       set files $files $v
    #     case function
    #       set fns $fns $v
    #     end
    #   end
    #   p $fns
    #   f $files
  end
end
