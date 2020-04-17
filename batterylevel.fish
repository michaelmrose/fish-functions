# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 2
function batterylevel
    set text (	upower -i /org/freedesktop/UPower/devices/battery_$argv | grep -E "state|to\ full|percentage"|awk '{print $2}' |tr -d %)
    set state $text[1]
    set percentage $text[2]
    if [ $state = charging ]
        set start F00B
    else
        set start F00C
    end
    set hex $start(printf '%x' (math $percentage / 10))
    printf "\U$hex  $state $percentage%%" | cut -c1-90
end
