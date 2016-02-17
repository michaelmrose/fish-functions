function short-type
	set info (type $argv | head -1);
    if echo $info | grep -E '[a-zA-Z]+ is a function.*' > /dev/null
        echo function
    else
        echo file
    end
end
