# Defined in /home/michael/.config/fish/buffer/alt-tab-both.fish @ line 2
function alt-tab-both-long
    set active (get-ws-info get name where visible = true)
    set valid (seq 9) 0 # 0 needs to come after 9 contrary to math
    set odds (filter-with-expr is-odd $valid)
    set evens (filter-with-expr is-even $valid)
    set left  (filter-with-expr is-odd $active)
    set right (filter-with-expr is-even $active)
    i3-msg workspace (next-valid-entry $left $odds)
    i3-msg workspace (next-valid-entry $right $evens)
end
