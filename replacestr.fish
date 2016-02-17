function replacestr
	set com perl -0777 -i.original -pe \'s/$argv[1]/$argv[2]/igs\' $argv[3]
    eval $com
end
