function mk
	switch $argv[1]
    case -e
      er MARKED
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
        set -U MARKED $MARKED (pathof $i)
      end
  end
end
