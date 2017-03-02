function evaluntilquit
	set $pipe /tmp/fnpipe(uid)
  while true; 
    if read line <$pipe
      if match $line quit
        break
      else
        eval $line
      end
    end
  end
end
