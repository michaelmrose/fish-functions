function pretty-timers
    set output (timers)
    set json "{}"
    for pair in (string split " " $output)
        set key (echo $pair | awk -F: '{print $1}')
        set value (echo $pair | awk -F: '{print $2}')

        # Update the JSON object
        set json (echo $json | jq --arg key $key --arg value $value '. + {($key): $value}')
    end
    echo $json

end
