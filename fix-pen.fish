# Defined in /home/michael/.config/fish/buffer/fix-pen_fix-touchscreen.fish @ line 1
function fix-pen
    for i in (xinput list| n /'pen pen' n11 c=2)
        echo fixing id=$i
        xinput map-to-output $i eDP1
    end
end
