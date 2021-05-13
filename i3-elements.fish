# Defined in /usr/home/michael/.config/fish/buffer/i3-elements.fish @ line 2
function i3-elements
		set i3_bar_ids (xwininfo -all -root |grep i3bar | awk '{print $1}')
		set i3_frame_ids (xwininfo -all -root |grep i3-frame |grep 'no name' |awk '{print $1}')
		set ids $i3_bar_ids $i3_frame_ids
		if exists $argv[2]
				set trans $argv[2]
		else
				set trans 0.5
		end

		switch $argv[1]
				case trans
						set val $trans
				case hide
						set val 0
				case show
						set val 1.0
				case ids
						p $i3_bar_ids $i3_frame_ids
						return 0
		end
		for id in $ids
				transset -i $id $val > /dev/null
		end
end
