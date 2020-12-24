# Defined in /usr/home/michael/.config/fish/buffer/either-of.fish @ line 1
function either-of
		 if string match foo foo > /dev/null;echo a; else; echo b;end;
end
