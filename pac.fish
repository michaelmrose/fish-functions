# Defined in /home/michael/.config/fish/buffer/pac_paci.fish @ line 2
function pac
	# sudo PULSE_RUNTIME_PATH=/var/run/pulse -u pulse pacmd $argv
  pacaur --noconfirm --noedit $argv
end
