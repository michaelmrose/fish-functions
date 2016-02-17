function cm
	set op $argv[1]
    set file $argv[2..-1]
    switch (count $file)
        case 1
            switch $op
                case o
                    mv "$file" /mnt/ext/old-music
                case c
                    mv "$file" /mnt/ext/combined-music
                case d
                    diff-both-music $file
                case v
                    verify-file-list $file
                case vv
                    verify-both $file
                case rm
                    rm -rf "$file"
                case m
                    set dir (pwd)
                    cd /mnt/ext/Music
                    cm c $file
                    cd /mnt/ext/lindas-music/
                    cm rm $file
                    cd $dir
                case l
                    set dir (pwd)
                    cd /mnt/ext/lindas-music/
                    cm c $file
                    cd /mnt/ext/Music
                    cm rm /mnt/ext/Music/$file
                    cd $dir
            end
        case '*'
            for i in $file
                cm $op "$i"
            end
    end
end
