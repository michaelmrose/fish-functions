function restoreme
	i3-msg append_layout ~/.i3/sessions/{$argv}.json
  ff ~/sessions/{$argv}
end
