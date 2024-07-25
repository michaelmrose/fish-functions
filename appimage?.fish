function appimage?
 set output (appimagetool --list $argv[1] 2>&1)
    if string match -q "*sqfs_open_image error*" "$output"
        echo "$argv[1] is an app image, but there was an error reading it"
    else if string match -q "*Listing files in AppImage*" "$output"
        echo "$argv[1] is an app image"
    else
        # echo "$argv[1] is not an app image"
    end
end
