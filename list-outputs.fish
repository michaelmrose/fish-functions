function list-outputs
	set outputs (pacmd list-sinks | sed -n -e 's/device.description[[:space:]]=[[:space:]]"\(.*\)"/\1/p')
    set cnt 0
    for i in $outputs
        if [ $cnt = $default_sink ]
            echo \* $i
        else
            echo $i
        end
        # inc cnt
        set cnt (math cnt + 1)
    end
end
