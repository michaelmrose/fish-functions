function prior
	set prev (echo $history[1]|choose 1:)
	set n (count $prev)
	for i in  (seq 1 $n)
		echo $i
		echo $prev|choose $i:
	end
end
