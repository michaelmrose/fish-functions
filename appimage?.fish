function appimage?
  # First, check if appimagetool can list the files
    set output (appimagetool --list $argv[1] 2>&1)
    if string match -q "*Listing files in AppImage*" "$output"
        echo "$argv[1] is an app image"
        return
    end

    # If appimagetool fails, check for ISO 9660 format using isoinfo
    set iso_output (isoinfo -d -i $argv[1] 2>&1)
    if string match -q "*No such file*" "$iso_output"
        echo "$argv[1] is not an app image"
    else if string match -q "*ISO 9660*" "$iso_output"
        # echo "$argv[1] might be an app image, but there was an error reading it"
        return 1
    else
        # echo "$argv[1] is not an app image"
        return 1
    end
end
