# Defined in /usr/home/michael/.config/fish/buffer/nandtools.fish @ line 2
function nandtools
		set tools (ls ~/proj/nand2tetris/tools/*.sh)
		set tool (p $tools |choose -f '/|\.' 6|select)
		ls ~/proj/nand2tetris/tools/*.sh|grep $tool |each fish -c
end
