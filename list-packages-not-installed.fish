function list-packages-not-installed
	set pkgs (list-package-names-not-installed $argv)
    set desc (list-descriptions-not-installed $argv)
    for i in (seq (count $pkgs))
        echo -e $pkgs[$i] $desc[$i]
    end
end
