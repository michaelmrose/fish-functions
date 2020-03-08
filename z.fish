# Defined in /home/michael/.config/fish/buffer/z.fish @ line 2
function z
	if test -d $argv
    else
	      cd ( zoxide query etc|cut -c8-)
    end
end
