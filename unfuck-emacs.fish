function unfuck-emacs
    sleep 0.2
    # i3-msg fullscreen enable
    emf en unfuck-emacs-tab-bar-display
    i3-msg gaps inner current plus 5
    sleep 0.1
    i3-msg gaps inner current minus 5
    sleep 0.01
    # i3-msg fullscreen disable
end
