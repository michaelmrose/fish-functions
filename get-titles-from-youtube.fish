function get-titles-from-youtube
	set data $argv
    set titles (echo $data | jq .title | fix-video-title)
    set titles (apply-to-list stripquotes $titles)
    println $titles
end
