# Defined in /home/michael/.config/fish/buffer/xrr4_xrr5.fish @ line 24
function xrr5
	if not exists $argv
      #given no argument rerun last xrr command
      set fn $LAST_XRR_COMMAND
  else
      switch $argv[1]
          case save
              set -U SAVED_XRR_COMMAND_$argv[2] $LAST_XRR_COMMAND
          case use
              set val SAVED_XRR_COMMAND_{$argv[2]}
              if not exists $$val
                  echo no such profile saved
                  return 1
              else
                  set fn $$val
              end
          case rm
              set -e SAVED_XRR_COMMAND_$argv[2]
          case ls
              echo profiles available:
              set|g '^saved_xrr'|cut -d _ -f4

              return 0
          case '*'
              #in this case we are given a list of monitors not a valid command
              set fn xrandr
              set all (xrandr | grep ' connected' | cut -d ' ' -f1)
              set selected $argv
              for display in $selected
                    set fn $fn --output $display --auto
                    if exists $prior
                        set fn $fn --right-of $prior
                    end
                    set prior $display
                end
                for display in $all
                    if not contains $display $selected
                        set fn $fn --output $display --off
                    end
                end
        end
    end
    echo $fn
    eval $fn
    wp recall
    set -U LAST_XRR_COMMAND $fn
end
