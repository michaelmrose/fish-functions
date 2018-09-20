# Defined in /home/michael/.config/fish/buffer/get-cover-based-on-title.fish @ line 2
function get-cover-based-on-title
	echo (fd -i -F -t d -d 2 -c never "$argv" $bookroot)/cover.jpg
end
