# Defined in /home/michael/.config/fish/buffer/dji.fish @ line 2
function dji
    set -x NO_COLOR 1
    set ndx (ticker.sh \^DJI|nth 2|money-format)
    # msg the dow is now at ... $ndx
    echo $ndx
end
