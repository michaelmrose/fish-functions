function walfn
        wal -n --saturate 0.7 -i $img
        xrdb ~/.cache/wal/colors-i3.conf
        restart-i3

end
