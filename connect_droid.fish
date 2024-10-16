function connect_droid
    set ip 192.168.1.42
    set port (sudo nmap -p 1000-60000 192.168.1.42|g 'open.*unknown' |choose -f '/' 0)
    if exists $port and ; and exists $ip
        echo port is $port and ip is $ip
        adb connect $ip:$port
    end
end
