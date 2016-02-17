function switchonval
	set val $argv[1]
    set tail $argv[2..-1]
    set ranges (odds $tail)
    set results (evens $tail)
    for i in (seq (count $ranges))
        if within $ranges[$i] $val
            echo $results[$i]
        end
    end
end
