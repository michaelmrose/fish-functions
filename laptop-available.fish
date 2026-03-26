function laptop-available
    ping c -c1 -W 0.5  &> /dev/null

end
