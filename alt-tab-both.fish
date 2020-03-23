# Defined in /home/michael/.config/fish/buffer/alt-tab-both.fish @ line 13
function alt-tab-both
    set active (get-ws-info get name where visible = true)
    i3-msg workspace (next-valid-entry (odds $active) (odds (seq 9) 0) )
    i3-msg workspace (next-valid-entry (evens $active) (evens (seq 9) 0))
end
