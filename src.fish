function src
	switch (short-type $argv)
        case file
            cat (which $argv) | pygmentize
        case function
            functions $argv
    end
end
