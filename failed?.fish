function failed?
	set res (up? $argv)
	if not string match -r '^run.*' $res
		echo res
	end
end
