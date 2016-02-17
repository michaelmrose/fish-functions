function diff-music
	set dir (pwd)
    set folder1 $argv[1]
    set folder2 $argv[2]
    set tmp1 /tmp/diff-music-folder1-(uid)
    set tmp2 /tmp/diff-music-folder2-(uid)
    cd $folder1
    findall music > $tmp1
    cd $folder2
    findall music > $tmp2
    qvimdiff $tmp1 $tmp2
    cd $dir
end
