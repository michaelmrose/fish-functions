function verify-both
	set file (pwd)
    cd /mnt/ext/lindas-music/$argv
    echo (pwd)
    verify-file-list
    cd /mnt/ext/Music/$argv
    echo (pwd)
    verify-file-list
    cd $file
end
