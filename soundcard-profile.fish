function soundcard-profile
    set search $argv[1]
    set profile $argv[2]

    if test -z "$search" -o -z "$profile"
        echo "Usage: soundcard-profile <search-string> <profile>"
        return 1
    end

    set id (pw-dump | jq --arg s "$search" '.[] | select(.info.props."device.description"? // empty | test($s)) | .id')

    if test -z "$id"
        echo "No matching sound card found for '$search'"
        return 1
    end

    wpctl set-profile $id $profile
end
