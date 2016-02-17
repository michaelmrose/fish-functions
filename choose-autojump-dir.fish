function choose-autojump-dir
	set dir (autojump (rfi enter "choose a dir: "))
    spacefm-cd $dir
end
