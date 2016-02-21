function vi3_workspace --description 'switch workspace [a-z]'
	echo hi
  echo (count $argv)
	switch (count $argv)
      case 1
        i3-msg $argv
      case'*'
        echo in multi case
        for i in (explode-words $argv)
            echo changing to $i
            i3-msg workspace $i
        end
        er vi3op
        update-op-status
      end
end
