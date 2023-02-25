function failed?
	set res (up? $argv )
	if not string match -r '^run.*' $res > /dev/null
		echo $res
	end
end
