# Defined in /usr/home/michael/.config/fish/buffer/update.fish @ line 2
function update
    sudo zfs snapshot -r trident/ROOT@(preferred-date)
    sudo xbps-install -Su
end
