function show-op
	if exists $vi3op
          switch $vi3op
              case "ws"
                  set msg "switch workspace [a-z]"
              case "vi3_trans"
                  set msg "set transparency [00-99]"
              case "gws"
                  set msg "get windows from [a-z]"
              case "mws"
                  set msg "move window to [a-z]"
              case "tws"
                  set msg "take window to [a-z]"
              case "vi3_vol"
                  set msg "set volume [00-99]"
              case "focus-app"
                  set msg "focus appkey [a-zA-Z]"
              case "vi3_fetch-window"
                  set msg "fetch appkey[a-zA-Z]"
              case "open-app"
                  set msg "open appkey [a-zA-Z]"
              case "new-open-app"
                  set msg "open appkey [a-zA-Z]"
              case "vi3_kill"
                  set msg "kill (d)elete all in ws (a)pp (e)verything visible (o)ther windows (t) another ws"
              case "rws"
                  set msg "relocate windows from [a-z] to [a-z]"
              case "kill-all-app"
                  set msg "kill all instances of appkey [a-zA-Z]"
              case "vi3_height"
                  set msg 'set window height [01-99]'
              case "vi3_width"
                  set msg 'set window width [01-99]'
              case "vi3_vol"
                  set msg 'set volume [01-99]'
              case "*"
                  set msg "some other op"
          end
      end

      echo $msg
end
