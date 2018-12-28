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
          case literal
              set fn xrandr $argv[2..-1]
          case ls
              echo profiles available:
              for p in (set|g '^saved_xrr'|cut -d ' ' -f1 | cut -d _ -f4)
                  set val SAVED_XRR_COMMAND_{$p}
                  echo $p: $$val
              end
              return 0
          case '*'
              #in this case we are given a list of monitors not a valid command
              set fn xrandr
              set all (xrandr | grep ' connected' | cut -d ' ' -f1)
              set selected $argv
              set prior ''
              for display in $selected
                  set fn $fn --output $display --auto $prior
                  # if exists $prior
                  #     set fn $fn --right-of $prior
                  # end
                  set prior --right-of $display
              end
              for display in $all
                    if not contains $display $selected
                        set fn $fn --output $display --off
                    end
                end
        end
    end
    echo $fn
    # eval $fn
    # wp recall
    # set -U LAST_XRR_COMMAND $fn
end
