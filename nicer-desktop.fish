# Defined in /home/michael/.config/fish/buffer/nicer-desktop.fish @ line 2
function nicer-desktop
	pgrep 'Xorg|i3|emacs|pulseaudio'|each nicer
  deprio Web
  deprio firefox
  deprio qbittorrent
  deprio mullvad
  deprio openvpn
end
