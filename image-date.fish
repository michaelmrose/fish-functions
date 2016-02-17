function image-date
	identify -verbose 00046.jpg | grep DateTimeOriginal | cut -d ":" -f3- | trim
end
