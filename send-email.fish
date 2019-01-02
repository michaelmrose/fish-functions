# Defined in /home/michael/.config/fish/buffer/send-email_share-url-from-clip.fish @ line 2
function send-email
	set target $argv[1]
    set sub $argv[2]
    set message $argv[3..-1]
	  p "Subject: $sub" "$message" | msmtp $target
end
