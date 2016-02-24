function println
	for i in $argv
        # if test -f $i
        #   cat $i
        # else
          echo -e $i
        # end
    end
end
