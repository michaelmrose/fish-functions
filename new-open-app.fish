function new-open-app
	set target (appkey $argv)
    set winclass (return-windowclass $target)
    set sizeof (math $numkeyed \* 2)
    set sizeof $numkeyed
    # set sizeof (wcalc -q "$numkeyed \* 2")

    if [ $numkeyed = "0" ]
        echo "no size chosen"
    else
        cat ~/.i3/sessions/template.json | sed "s/#size/$sizeof/g" | sed "s/#winclass/$winclass/g" > /tmp/template.json
        cat /tmp/template.json
        i3-msg append_layout /tmp/template.json
        set -U numkeyed 0
    end
    er vi3op
    update-op-status
    #running urxvtc as root doesn't result in a root terminal OBVIOUSLY so need to run
    #urxvt obviously this is a flakey special case for one app
    if exists $sustatus
        if [ $target = urxvtt ]
            set target urxvt
        end
    end
    eval $sustatus $target &
    er sustatus
    sleep 0.5
end
