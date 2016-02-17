function condense
	set acc ""
    for i in $argv; set acc $acc$i; end
    echo $acc
end
