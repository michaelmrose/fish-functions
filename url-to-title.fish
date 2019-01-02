# Defined in /home/michael/.config/fish/buffer/url-to-title.fish @ line 1
function url-to-title
	wget -qO- 'http://www.youtube.com/watch?v=Dd7dQh8u4Hc' | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si' | recode html..
end
