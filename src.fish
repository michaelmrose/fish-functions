# Defined in /home/michael/.config/fish/buffer/src.fish @ line 2
function src
	set vals (without-options $argv)
  for v in $vals
    switch (short-type $v)
      case file
        set files $files (which $v)
      case function
        set fns $fns $v
      end
      
    end
    if exists $files
      for f in $files
        pygmentize $f
      end
    end
    echo f is $fns
    if exists $fns
        fn pprint $fns
    end
end
