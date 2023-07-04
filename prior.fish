function prior
	set prev (echo (history)[1]|choose 1:)
	set n (echo $prev|wc -w)
	for i in  (seq 1 $n)
		set res $res ($prev|choose $i:)
	end
	p $res|fzf
end
