function play
    if file "$argv"| grep text > /dev/null
        mpv (cat "$argv")
    else
        mpv "$argv"
    end

end
