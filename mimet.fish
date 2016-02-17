function mimet
	switch $argv
        case http
            echo "x-scheme-hander/http"
        case https
            echo "x-scheme-hander/https"
        case directory
            echo "inode/directory"
        case "*"
            mimetype file.{$argv} | cut -d ":" -f2- | trim
    end
end
