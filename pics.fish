# Defined in /usr/home/michael/.config/fish/buffer/pics.fish @ line 2
function pics
		# rewrite this whole thing is garbage
		if exists $argv[1]
				if test -d $argv[1]
						set target $argv[1]
				else if test -f $argv[1]
						if test (count $argv) -gt 1
								sxiv -tbfor $argv
						else
								sxiv $argv
						end
				else
						set target (get-folder-for-backgrounds $argv[1])
				end
		else
				pics (pwd)
		end
		# set pictures (findall-list dirs=$target types=jpg)
		
		#write something more complicated later
		switch (count $argv)
				case 1
						sxiv -tbfor $target 2> /dev/null
				case 2
						sxiv -tbfor $target/* 2> /dev/null
		end
end
