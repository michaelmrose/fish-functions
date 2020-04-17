# Defined in /home/michael/.config/fish/buffer/batterylevel.fish @ line 2
function batterylevel
    set text (	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full|percentage"|awk '{print $2}')
    set state $text[1]
    set percentage $text[2]
    set numeric (echo $percentage |rev |cut -c 2- |rev)
    if [ $state = charging ]
        set start F00B
    else
        set start F00C
    end
    set hex {$start}A
    printf "\U$hex $state $percentage"
end
