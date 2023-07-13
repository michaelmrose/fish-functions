function cr
	mkdir -p  /(echo $PWD/$apath|choose -f / 0:|choose 0:-2|sd ' ' '/')
	echo (echo $argv|choose -f / -1)
end
