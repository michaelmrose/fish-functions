function name-of-wallpaper
	set category (cutlastn / 2 $bgimage)
    set name (cutlastn / 1 $bgimage | cut -d "." -f1 | sed "s/-/ /g")
    echo $category: $name
end
