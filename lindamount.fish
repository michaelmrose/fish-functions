# Defined in /usr/home/michael/.config/fish/buffer/lindamount.fish @ line 1
function lindamount
sudo mount -t cifs -o username=linda,password=$lindapw,uid=(id -u),gid=(id -g) //192.168.0.3/$argv[1] $argv[2]
end
