function prior
	set prev (echo (history)[1]|choose 1:)
	echo prev is $prev
	set n (count $prev)
	echo n is $n
	for i in  (seq 1 $n)
		echo $i
		echo $prev|choose $i:
	end
end
