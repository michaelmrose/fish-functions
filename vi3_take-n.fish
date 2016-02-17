function vi3_take-n
	
# takes a letter which is added to a list a function to eval
# and a number n when the list is n letters long the function
# is evaluated making use of the list

    set -U combolist $combolist $argv[1]
    if test (count $combolist) = $argv[3]
        eval $argv[2]
        echo "done!" &
        set -e combolist
        i3-msg mode "default" &
        er vi3op &
        update-op-status &
    else
        echo "not yet" &
        i3-msg mode "op" &
    end
end
