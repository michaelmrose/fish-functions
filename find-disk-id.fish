# Defined in /usr/home/michael/.config/fish/buffer/find-disk-id.fish @ line 1
function find-disk-id
ls -alF /dev/disk/by-id/|g $argv
end
