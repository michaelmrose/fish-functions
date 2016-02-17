function nvhtml
	set tmp (uid).html
    curl $argv > $tmp
    nv $tmp
end
