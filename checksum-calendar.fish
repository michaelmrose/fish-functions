function checksum-calendar
	set doc $argv
    echo $doc | pup 'ul[class="days row even max first-child"]' | md5sum | cut -d " " -f1
end
