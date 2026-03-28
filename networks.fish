function networks
    nmcli dev wifi list | choose 1|sort -u
end
