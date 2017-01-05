function defined-in
	set fn "function $argv\$"
    set fn2 "function $argv -"
    set al "alias $argv "
    set fishpaths ~/fish ~/.config/fish/functions
    set fishconfig ~/.config/fish/config.fish
    for i in $fishpaths
        set results $results (ag -f $fn $i | cut -d ':' -f1)
        set results $results (ag -f $fn2 $i | cut -d ':' -f1)
        set results $results (ag -f $al $i | cut -d ':' -f1)
    end

    echo $results[1]
    set -e results
end
