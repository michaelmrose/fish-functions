# Defined in /home/michael/.config/fish/buffer/alt-tab-both.fish @ line 2
function alt-tab-both
    set active (get-ws-info get name where visible = true)
    set valid (seq 9) 0
    set odds (filter-with-expr is-odd $valid)
    set evens (filter-with-expr is-even $valid)
    set left  (filter-with-expr is-odd $active)
    set right (filter-with-expr is-even $active)
    i3-msg workspace (next-valid-entry $left $odds)
    i3-msg workspace (next-valid-entry $right $evens)
end
