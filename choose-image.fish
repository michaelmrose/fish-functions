function choose-image
	set current (pwd)
    set path $argv
    cd $path
    echo $path/(sxiv -tfo *.jpg *.png *.bmp)
    cd $current
end
