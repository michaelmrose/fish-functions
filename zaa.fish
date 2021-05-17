# Defined in /usr/home/michael/.config/fish/buffer/zaa.fish @ line 2
function zaa
		for p in (fd -a --type d)
				za "$p"
		end
end
