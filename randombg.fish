function randombg
		fd -e png -e jpg -e bmp .\* ~/backgrounds|shuf|head -1
end
