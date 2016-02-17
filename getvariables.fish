function getvariables
	if not substr "$argv" =
        return 1
    else
        set vars (println $argv | grep =)
        for i in $vars
            # echo (echo $i | cut -d "=" -f1) (echo $i | cut -d "=" -f2)
            set var (echo $i | cut -d "=" -f1)
            set val (echo $i | cut -d "=" -f2 | sed 's/,/ /g')
            echo $var $val
        end

    end
end
