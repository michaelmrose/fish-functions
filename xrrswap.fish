# Defined in /usr/home/michael/.config/fish/buffer/xrrswap.fish @ line 1
function xrrswap
    if test (count (get-connected-displays)) -gt 1
        xrr single
    else
        xrr triple
    end
end
