# Defined in /usr/home/michael/.config/fish/buffer/either-of.fish @ line 2
function either-of
		# if string match foo foo > /dev/null;echo a; else; echo b;end;
		set fn $argv[1]
		optiona $argv[2]
		optionb $argv[3]
end
