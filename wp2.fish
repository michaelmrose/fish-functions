function wp2
	set dest ~/.bgimage/img.png
    set resolution 1920x1080

    if matches $argv "max|scale|tile"
        echo first
        set style $argv
        set image $dest
    else if matches "$argv" "max|tile|scale \S*"
        echo second
        set style $argv[1]
        set image (pathof $argv[2])
    else if matches $argv "\S*"
        echo third
        set style scale
        set image (pathof $argv[1])
    end

    echo i is $image s is $style
    feh --bg-$style $image
    echo converting...
    convert $image -resize 1920x1080\! $dest
end
