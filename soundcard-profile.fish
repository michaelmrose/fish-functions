function soundcard-profile
    wpctl set-profile (pw-dump | jq ".[] | select(.info.props."device.description"? // empty | test("Navi")) | .id") off
end
