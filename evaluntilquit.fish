function evaluntilquit
	set pipe /tmp/fnpipe
  mkfifo $pipe
  while true; 
    if read line <$pipe
      if match $line quit
        break
      else
        # eval $line
        eval $line > /tmp/fnpipeout
      end
    end
  end
  rm $pipe
end
