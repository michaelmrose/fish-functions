function mk
	switch $argv[1]
    case -c
      er MARKED
    case -e
      p $MARKED > /tmp/MARKED
      nvim /tmp/MARKED
      set -U MARKED (cat /tmp/MARKED)
    case -p
      p $MARKED
    case -m
      for i in $MARKED
        mv $i $argv[2]
        er MARKED
      end
    case -c
      for i in $MARKED
        cp -R $i $argv[2]
        er MARKED
      end
    case '*'
      for i in $argv
        set -U MARKED $MARKED (fullpath $i)
      end
  end
end
