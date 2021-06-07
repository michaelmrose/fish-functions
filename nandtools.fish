# Defined in /usr/home/michael/.config/fish/buffer/nandtools.fish @ line 1
function nandtools
		set tool (ls ~/proj/nand2tetris/tools/*.sh|choose -f '/|\.' 6|select)
		ls ~/proj/nand2tetris/tools/*.sh|grep $tool |each fish -c
end
