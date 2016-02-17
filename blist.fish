function blist
	for i in title tags;
        println -e {$green}"resuts in $i" {$white}(calibredb list -f title -s $i:$argv)[2..-1]
    end
end
