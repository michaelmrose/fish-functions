# Defined in /home/michael/.config/fish/buffer/runp2.fish @ line 2
function runp2
	killall compton
    sleep 0.25
    if test (count (get-connected-displays)) -gt 1
        xrr desktop
    end
    set dir (pwd)
    cd '/home/michael/.local/share/Steam/steamapps/common/Pillars of Eternity II'
    optirun ./PillarsOfEternityII
    xrr triple
    compton &
    cd "$dir"
end
