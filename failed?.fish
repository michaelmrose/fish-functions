function failed?
	set res (up? $argv > /dev/null)
	if not string match -r '^run.*' $res
		echo $res
	end
end
