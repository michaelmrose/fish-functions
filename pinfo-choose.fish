function pinfo-choose
	set pkgs (psearch $argv)
    switch (count $pkgs)
        case "1"
            pinfo $pkgs
        case "*"
            fuzzymenu $pkgs
            pinfo (echo $fquery | cut -d "-" -f1)
    end
end
