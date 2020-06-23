# Defined in /home/michael/.config/fish/buffer/side-gaps.fish @ line 2
function side-gaps
    i3-msg "gaps right current set $argv ; gaps left current set $argv px"
end
