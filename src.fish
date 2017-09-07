# Defined in /home/michael/.config/fish/buffer/src.fish @ line 2
function src
	set vals (without-options $argv)
  p $vals
  for v in $vals
    switch (short-type $v)
      case file
        echo file
      case function
        echo fn
      end
      
    end
end
