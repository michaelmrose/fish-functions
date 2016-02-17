function verify-file-list
	if exists $argv
        set file (pwd)
        cd "$argv"
    end
    set tmp /tmp/(uid)-verify
    findall music > $tmp
    md5sum $tmp
    count (findall music)
    if exists $argv
        cd $file
    end
end
