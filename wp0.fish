function wp0 --description 'usage: [max,scale,tile] path-to-image or path-to-image or [max,scale,tile]'
	set dest ~/.bgimage/img.png
    switch (count $argv)
        case "2"
            set style $argv[1]
            if test -f $argv[2]
                set image (pathof $argv[2])
            else
                set image /mnt/ext/Images/backgrounds/$argv[2]
            end
        case "1"
            set image ~/.bgimage/img.png
            switch $argv[1]
                case "max"
                    set style max
                case "scale"
                    set style scale
                case "center"
                    set style center
                case "fill"
                    set style fill
                case "tile"
                    set style tile
                case "*"
                    set style max
                    set image (pathof $argv[1])
           end
    end
    feh --bg-$style $image
    if not match $image $bgpath
        echo converting...
        convert $image -resize 1920x1080\! $dest &
    end
    set -U bgpath $image
end
