# Defined in /usr/home/michael/.config/fish/buffer/open-app.fish @ line 2
function open-app
	set target (appkey $argv) \&
    eval $target
end
