function pkginfo
	set pkgs (psearch $argv)
    for i in $pkgs
        set info (pstatus (extract-package-name $i))
        set name (echo $info | cut -d ":" -f1)
        set desc (extract-package-description $i)
        set insvers (echo $info | cut -d " " -f5-6 | trim)
        set canidatevers (echo $info | cut -d " " -f9 | trim)
        if [ $insvers = $canidatevers ]
            set versions $canidatevers
        else
            set versions $insvers $canidatevers
        end
        echo -e {$white} $name - $desc Versions: $versions
    end
end
