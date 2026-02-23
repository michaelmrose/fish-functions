function batterylevel
    set -l info (upower -i (upower -e | grep BAT))

    set -l state (string trim (string replace -r '^\s*state:\s*' '' \
        (string match -r '^\s*state:\s*.*' -- $info)))

    set -l pct (string trim (string replace -r '^\s*percentage:\s*' '' \
        (string match -r '^\s*percentage:\s*.*' -- $info)))

    set -l n (string replace -r '%$' '' $pct)

    # Font Awesome battery icons (very common in Nerd Fonts)
    # empty:   quarter:   half:   three-quarters:   full: 
    set -l batt_icon ''
    if test $n -le 10
        set batt_icon ''
    else if test $n -le 35
        set batt_icon ''
    else if test $n -le 65
        set batt_icon ''
    else if test $n -le 90
        set batt_icon ''
    else
        set batt_icon ''
    end

    # charging bolt icon (Font Awesome)
    set -l icon $batt_icon
    switch $state
        case charging
            set icon " $batt_icon"
        case fully-charged full
            set icon ''   # plug (also Font Awesome); fallback is fine if missing
        case discharging
            set icon $batt_icon
        case '*'
            set icon $batt_icon
    end

    set -l extra (printf '%s
' $info \
        | grep -E 'time to empty|time to full' \
        | condense_lines | condense_spaces)

    if test -n "$extra"
        echo "$icon   $pct $extra"
    else
        echo "$icon $pct"
    end
end
