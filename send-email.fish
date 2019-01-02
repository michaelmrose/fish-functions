# Defined in /home/michael/.config/fish/buffer/send-email.fish @ line 1
function send-email
	printf "Subject: {$argv[2]}nn{$argv[3..-1]}" | msmtp $argv[1]
end
