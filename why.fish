function why
	set pkg (dpkg -S (which $argv))
    if exists $pkg
        set pkg (echo $pkg | cut -d ":" -f1)
        set result (apt-cache search $pkg | grep "^$pkg - ")
        echo $argv was installed as part of $result
    else
        echo $argv is not part of a package
        return 1
    end
end
