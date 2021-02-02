# Defined in /usr/home/michael/.config/fish/buffer/wali3status-rs.fish @ line 2
function wali3status-rs
		sd '^warning_bg.*' "warning_bg = \"$argv[1]\"" ~/.config/i3status-rust/config.toml
		sd '^warning_bg.*' "info_bg = \"$argv[1]\"" ~/.config/i3status-rust/config.toml
end
