# Defined in /home/michael/.config/fish/buffer/mp3check.fish @ line 1
function mp3check
    mp3val -si *.mp3|g --invert-match "no supported tags" 
end
