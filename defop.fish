function defop
	set -U operation $argv[1]_op
    set -U numberofkeys $argv[2]
    set -U finalfunction $argv[3..-1]
    functions -e $argv[1]_op
    functions -e $argv[1]

    function $argv[1]_op
        eval $finalfunction
    end

    function $argv[1]
         eval vi3_take-{$numberofkeys} $argv[1] $operation
    end
end
