function imgur-upload
	set img (imgur --anon upload $argv| grep imgur_page | cut -d ":" -f2-3 | trim)
    open $img
    echo $img
    echo $img | xclip -i -selection clipboard
end
