function restoreme
	i3-msg append_layout ~/.i3/sessions/{$argv}.json
  eval ~/sessions/{$argv}
end
