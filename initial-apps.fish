# Defined in /home/michael/.config/fish/buffer/initial-apps.fish @ line 2
function initial-apps
	startonprep f (appkey e)
    fish -c (appkey e) &
	  startonprep c (appkey E) v (appkey t) g (appkey b)
    fish -c (appkey E) &
    fish -c (appkey t) &
    fish -c (appkey b) &
end
