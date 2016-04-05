function mk
	switch $argv[1]
    case -e
      er $MARKED
    case -m
      for i in $MARKED
        mv $i $argv[2]
      end
    case -c
      for i in $MARKED
        cp $i $argv[2]
      end
    case '*'
      for i in $argv
        set -U MARKED $MARKED (pathof $i)
      end
  end
end
