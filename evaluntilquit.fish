function evaluntilquit
	set pipe /tmp/fnpipe
  mkfifo $pipe
  while true; 
    if read line <$pipe
      if match $line quit
        break
      else
        eval $line
      end
    end
  end
  rm $pipe
end
