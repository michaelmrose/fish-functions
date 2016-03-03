function cmd-duration
	set_color normal
  set -l seconds ''
  set -l minutes ''
  set -l hours ''
  set -l days ''
  set -l cmd_duration (expr $CMD_DURATION / 1000)
  if [ $cmd_duration -gt 0 ]
      set seconds (expr $cmd_duration \% 68400 \% 3600 \% 60)'s'
      if [ $cmd_duration -ge 60 ]
          set minutes (expr $cmd_duration \% 68400 \% 3600 / 60)'m'
          if [ $cmd_duration -ge 3600 ]
              set hours (expr $cmd_duration \% 68400 / 3600)'h'
              if [ $cmd_duration -ge 68400 ]
                  set days (expr $cmd_duration / 68400)'d'
              end
          end
      end
      set_color $dangerous_colors[3]
      echo -n '❮'
      switch $pwd_style
          case short long
              if [ $last_status -ne 0 ]
                  echo -n (set_color $dangerous_colors[7])' '$days$hours$minutes$seconds(set_color $dangerous_colors[3])' ❮'
              else
                  echo -n (set_color $dangerous_colors[12])' '$days$hours$minutes$seconds(set_color $dangerous_colors[3])' ❮'
              end
      end
  end
end
