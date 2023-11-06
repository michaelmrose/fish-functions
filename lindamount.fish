function lindamount
sudo mount -t cifs -o username=linda,password=$lindapw,uid=(id -u),gid=(id -g) //192.168.1.3/$argv[1] $argv[2]
end
