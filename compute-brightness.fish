# Defined in /usr/home/michael/.config/fish/buffer/compute-brightness_darker-acce.fish @ line 1
function compute-brightness
		set rc (hextodec (echo $color | cut -c2-3))
		set gc (hextodec (echo $color | cut -c4-5))
		set bc (hextodec (echo $color | cut -c6-7))
end
