# Defined in /home/michael/.config/fish/buffer/con.fish @ line 2
function con
	if exists $argv
	      find $argv -type f
    else
        find (pwd) -type f
    end
end
