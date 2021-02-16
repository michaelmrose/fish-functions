# Defined in /usr/home/michael/.config/fish/buffer/email-notification.fish @ line 2
function email-notification
		set email_subject (last-email-subject)
		if not string match $email_subject $LAST_EMAIL_SUBJECT
				typewriter-notification "email: " $email_subject
				set -U LAST_EMAIL_SUBJECT $email_subject
		end
end
