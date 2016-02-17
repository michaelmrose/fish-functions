function es
	switch $argv[1]
          case py
              switch $argv[2]
                  case 2
                      set vers 1
                  case 3
                      set vers 2
              end
              set com python set $vers
          case "*"
              set com $argv
    end
    sudo eselect $com
end
