# Defined in /usr/home/michael/.config/fish/buffer/i3lockscreenshot.fish @ line 1
function i3lockscreenshot
    screenshot everything /tmp/lock.png
    i3lock -i /tmp/lock.png
end
