function removespaces-from-fnames
	for i in (ls)
            mv $i (echo $i | sed 's/ //g')
        end
end
