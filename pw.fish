function pw
    set pw (pwgen -cny 12|choose 0)
    echo $pw | clipboard
    echo $pw
end
