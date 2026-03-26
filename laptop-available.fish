function laptop-available
    ping 192.1.1.5 -c1 -W 0.5  &> /dev/null

end
