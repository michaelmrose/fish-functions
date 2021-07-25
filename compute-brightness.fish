# Defined in /usr/home/michael/.config/fish/buffer/compute-brightness_darker-acce.fish @ line 2
function compute-brightness
	set color $argv
	set rc (math 0.7 \* (hextodec (echo $color | cut -c2-3)))
	set gc (math 0.2 \*(hextodec (echo $color | cut -c4-5)))
	set bc (math 0.07 \*(hextodec (echo $color | cut -c6-7)))
	math $rc + $gc + $bc
end
