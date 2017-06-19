function appkey
	if matches "$argv" '[a-zA-Z]'                # view
        set var appkey_$argv
        echo $$var
    else if matches "$argv" 'erase [a-zA-Z]'     # erase
        er appkey_$argv[2]
    else if matches "$argv" 'show'               # show
        for i in (alphabet)
            echo $i: (appkey $i)
        end
    else if matches "$argv"  'find [a-zA-Z\-]+'
        appkey show | grep -i --color=never $argv[2..-1]
    else if matches "$argv"  'which [a-zA-Z\-]+'
        appkey show | grep -i --color=never $argv[2..-1] | cut -c1
    else if matches "$argv" '[a-zA-Z] .+' # set
        set value appkey_$argv[1]
        set -U $value $argv[2..-1]
    end
end
