function steamplay
    eval (rg Exec (rg steam ~/.local/share/applications/ -l|g $argv|select)|choose -f = 1:)
end
