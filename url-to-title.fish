# Defined in /home/michael/.config/fish/buffer/url-to-title.fish @ line 2
function url-to-title
	set url (string escape $argv)
	  wget -qO- $argv | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si' | recode html..
end
