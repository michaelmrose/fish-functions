# Defined in /usr/home/michael/.config/fish/buffer/fkeylock.fish @ line 2
function fkeylock
		if [ false = (cat /tmp/fkeylock) ]
				echo true >> /tmp/fkeylock
				xmodmap -e 'keycode 71 = F5'
				xmodmap -e 'keycode 72 = F6'
				xmodmap -e 'keycode 73 = F7'
				xmodmap -e 'keycode 74 = F8'
		else
				echo false >> /tmp/fkeylock
				xmodmap -e 'keycode 71 = XF86AudioPlay'
				xmodmap -e 'keycode 72 = XF86AudioStop'
				xmodmap -e 'keycode 73 = XF86AudioPrev'
				xmodmap -e 'keycode 74 = XF86AudioNext'
		end
end
