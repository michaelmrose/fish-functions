# Defined in /home/michael/.config/fish/buffer/mp3check.fish @ line 2
function mp3check
    mp3val -si $argv|g --invert-match "no supported tags" 
end
