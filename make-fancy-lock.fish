function make-fancy-lock
	cp $bgimage /tmp/i3lock.png
convert '/tmp/i3lock.png' '-level' '0%,100%,0.6' '-blur' '2x8' '/home/michael/ext-projs/i3lock-fancy-multimonitor/lock.png' '-geometry' '+755+440' '-composite' '/home/michael/ext-projs/i3lock-fancy-multimonitor/text.png' '-geometry' '+606+702' '-composite' '/home/michael/ext-projs/i3lock-fancy-multimonitor/lock.png' '-geometry' '+2555+455' '-composite' '/home/michael/ext-projs/i3lock-fancy-multimonitor/text.png' '-geometry' '+2406+717' '-composite' '/tmp/i3lock.png'
end
