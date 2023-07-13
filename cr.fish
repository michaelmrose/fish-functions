function cr
	mkdir -p $PWD/(echo $argv|choose -f / 0:|choose 0:-2|sd ' ' '/'echo $PWD|choose -f / 0:|choose 0:-2|sd ' ' '/')
	touch (echo $argv|choose -f / -1)
end
