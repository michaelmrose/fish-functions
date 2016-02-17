function pick-package
	set pkg (rfi match "select a package: " (list-packages-not-installed $argv))
    pkg -i (echo $pkg | cut -d " " -f1)
end
