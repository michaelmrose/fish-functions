function cmd-duration
	if not exists $CMD_DURATION
    return 0
  end
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
      set_color '#6CDEF9'
      echo -n '❮'
      echo -n (set_color white)' '$days$hours$minutes$seconds(set_color white)' ❮'
      # echo -n (set_color white)' '$days$hours$minutes$seconds(set_color white)' ❮'
    else
      set_color '#6CDEF9'
      echo -n '❮ '
      set_color white
      if [ $CMD_DURATION = 0 ]
        echo instant
      else
        echo $CMD_DURATION 'ms'
      end
      set_color '#6CDEF9'
      echo -n ' ❮ '
  end
end
