# Defined in /home/michael/.config/fish/buffer/src.fish @ line 2
function src
	switch (short-type $argv[1])
    case file
      if test (count $argv) -gt 1
        emc (which $argv[1])
      else
        cat (which $argv[1]) | pygmentize
      end
    case function
      functions $argv[1]
    end
end
