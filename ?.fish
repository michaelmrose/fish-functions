function ?
		# if string match foo foo > /dev/null;echo a; else; echo b;end;
		set fn $argv[1]
		set optiona $argv[2]
		set optionb $argv[3]
		if eval $fn > /dev/null
				echo $optiona
		else
				echo $optionb
		end
end
