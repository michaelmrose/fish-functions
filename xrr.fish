# Defined in /home/michael/.config/fish/buffer/xrr.fish @ line 2
function xrr
	switch $argv[1]
      # case left
      #   xrr (get-disconnected-displays) (get-connected-displays)
      # case right
      #   xrr (get-connected-displays) (get-disconnected-displays)
      # case single
      #     # xrr (get-primary-display)
      case laptop
          xrr eDP1
      case desktop
          xrr DP1
      case single
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --off --output HDMI2 --off
          return 0
      case dual
          # xrr (get-secondary-display) (get-primary-display)
          # xrr DP1 eDP1
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --auto --left-of eDP1 --output HDMI2 --off
      case triple
          xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --auto --left-of eDP1 --output HDMI2 --auto --left-of DP1

          # xrandr --output eDP1 --auto --set "scaling mode" "Full aspect" --scale 0.75x0.75 --output DP1 --auto --left-of eDP1 --output VIRTUAL1 --auto --left-of DP1
          # case '*'
          #   set fn xrandr --auto --output $argv[1]
          # set prior $argv[1]
          # if test (count $argv) -gt 1
          #   for output in $argv[2..-1]
          #       set fn $fn --auto --output $output --right-of $prior
          #       set prior $output
          #   end
          # end
          # for output in (get-connected-displays)
          #   # echo o is $output and a is $argv
          #   if not contains $output $argv
          #     set fn $fn --output $output --off
          #   end
          # end
          # echo $fn;eval $fn
          # wp recall
  end
  wp recall
end
