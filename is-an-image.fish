function is-an-image
	set imgtypes bmp gif jpg jpeg
    set type (get-ext $argv)
    contains $type $imgtypes
end
