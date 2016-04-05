function mk
	switch $argv[1]
    case --clear
      er MARKED
    case -e
      p $MARKED > /tmp/MARKED
      nvim /tmp/MARKED
      set -U MARKED (cat /tmp/MARKED)
    case -p
      p $MARKED
    case -mv
      for i in $MARKED
        eval mv $i $argv[2]
        er MARKED
      end
    case -cp
      for i in $MARKED
        eval cp -R $i $argv[2]
        er MARKED
      end
    case '*'
      for i in $argv
        set -U MARKED $MARKED (fullpath $i)
      end
  end
end
