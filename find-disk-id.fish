# Defined in /usr/home/michael/.config/fish/buffer/find-disk-id.fish @ line 2
function find-disk-id
    s fdisk -l /dev/$argv
ls -alF /dev/disk/by-id/|g $argv
end
