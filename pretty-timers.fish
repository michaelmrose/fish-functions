function pretty-timers
    set output (timers)
    set json "{}"
    # Use regex to split the output into pairs, then iterate over them
    for pair in (string split -r -m 1 ' ' $output)
        # Extract title and duration using string split at the first colon
        set components (string split -m 1 ':' $pair)

        # Extract the key and value
        set key $components[1]
        set value $components[2]

        # Replace spaces in the key with underscores to make it a valid JSON key
        set sanitized_key (echo $key | string replace ' ' '_')

        # Update the JSON object using jq
        set json (echo $json | jq --arg key $sanitized_key --arg value "$value" '. + {($key): $value}')
    end
    echo $json
end
