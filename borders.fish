function borders
	if contains (car $argv) - +
        set val (math $windowborders (car $argv) (cdr $argv) )
        if test $val -lt 0
            set val 0
        end
        borders $val
        return 0
    end
    if isnumeric $argv
        set val pixel $argv
        set -U windowborders $argv
    else
        set val $argv
    end
    allwindows border $val
end
