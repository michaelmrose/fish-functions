function file-bg-url
	set url (xclip -o)
    set name $argv[1]
    set ext (get-ext $url)
    set tmp background-url.$ext
    curl $url > /tmp/$tmp
    cd /tmp
    if is-background-unique $tmp
      file-bg $tmp $name
    else
      echo background already exists
    end
end
