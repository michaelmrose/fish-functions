function uz
	switch (count $argv)
        case 1
            switch (get-ext $argv)
                case deb
                    unzip-deb $argv
                case '*'
                    atool -x $argv
            end
        case '*'
            for i in $argv
                uz $i
            end
    end
end
