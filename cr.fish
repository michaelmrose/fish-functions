function cr
	set thePath /(echo $PWD/$apath|choose -f / 0:|choose 0:-2|sd ' ' '/')
	set theFile (echo (echo $argv|choose -f / -1))
	mkdir -p $thePath
	touch $thePath/$theFile
end
