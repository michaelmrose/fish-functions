# Defined in /usr/home/michael/.config/fish/buffer/update.fish @ line 1
function update
    echo sudo zfs snapshot -r trident/ROOT@(preferred-date)
    echo sudo xbps-install -Su
end
