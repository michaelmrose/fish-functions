# Defined in /usr/home/michael/.config/fish/buffer/pics.fish @ line 2
function pics
		set arguments $argv
		while read -l line
				set arguments $arguments $line
		end
		if exists $arguments[1]
				if test -d $arguments[1]
						set target $arguments[1]
				else if test -f $arguments
						sxiv -bo $arguments
				else
						set target (get-folder-for-backgrounds $arguments[1])
				end
		else
				pics (pwd)
		end
		# set pictures (findall-list dirs=$target types=jpg)
		
		#write something more complicated later
		switch (count $arguments)
				case 1
						sxiv -tbfor $target 2> /dev/null
				case 2
						sxiv -tbfor $target/* 2> /dev/null
		end
end
