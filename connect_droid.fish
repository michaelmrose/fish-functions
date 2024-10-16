function connect_droid
    set port (sudo nmap -p 1000-40000 192.168.1.42|g 'open.*unknown' |choose -f '/' 0)
    set ip 192.168.1.42
    if exists $port and ; and exists ip
        echo port is $port and ip is $pi
        adb connect $ip:$port
    end
end
