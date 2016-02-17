function makescript
	set f $argv
    touch $f
    echo '#!/usr/bin/fish' > $f
    chmod +x $f
end
