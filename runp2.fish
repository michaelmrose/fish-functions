# Defined in /home/michael/.config/fish/buffer/game_runp2_xrr.fish @ line 13
function runp2
	killall picom
    sleep 0.25
    if test (count (get-connected-displays)) -gt 1
        xrr desktop
    end
    set dir (pwd)
    cd '/home/michael/.local/share/Steam/steamapps/common/Pillars of Eternity II'
    optirun ./PillarsOfEternityII
    xrr double
    picom &
    cd "$dir"
end
