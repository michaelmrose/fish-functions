# Defined in /home/michael/.config/fish/buffer/containing-dir.fish @ line 1
function containing-dir
    echo $argv | rev |cut -d / -f2- | rev
end
