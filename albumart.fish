# Defined in /home/michael/.config/fish/buffer/albumart.fish @ line 2
function albumart
    set COVER /tmp/kunst.jpg
    set connected true
    set artless false
    set API_URL https://api.deezer.com/search/autocomplete?q=(mpc current)
    # API_URL="https://api.deezer.com/search/autocomplete?q=$(mpc current)" && API_URL=${API_URL//' '/'%20'}
end
