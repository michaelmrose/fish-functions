function pretty-timers
    set output (timers)
    set json "{}"
    for pair in (string match -r '[^: ]+:[^: ]+' $output)
        # Extract title and duration using string split
        set components (string split ':' $pair)

        # Extract the key and value
        set key $components[1]
        set value $components[2]

        # Replace spaces in the key with underscores to make it a valid JSON key
        set sanitized_key (echo $key | string replace ' ' '_')

        # Update the JSON object using jq
        set json (echo $json | jq --arg key $sanitized_key --arg value $value '. + {($key): $value}')
    end

    # Output the JSON
    echo $json

end
