function diff-both-music
	set file (pwd)
    set tmp1 /tmp/verify-mikes-(uid)
    set tmp2 /tmp/verify-linda-(uid)
    cd /mnt/ext/Music/$argv
    findall music > $tmp1
    cd /mnt/ext/lindas-music/$argv
    findall music > $tmp2
    qvimdiff $tmp1 $tmp2
    cd $file
end
