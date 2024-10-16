function connect_droid
    set port (sudo nmap -p 1000-40000 192.168.1.42|g 'open.*unknown' |choose -f '/' 0)
    adb connect 192.168.1.42:$port
end
