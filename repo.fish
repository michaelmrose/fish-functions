function repo
    git remote --verbose|head -1|choose 1|each xdg-open
end
