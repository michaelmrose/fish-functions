function appimage?
    if appimagetool --list $argv[1] >/dev/null 2>&1
        echo "$argv[1] is an app image"
    else
        # echo "$argv[1] is not an app image"
    end

end
