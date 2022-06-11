function unfuck-emacs
    sleep 0.2
    emf en unfuck-emacs-tab-bar-display
    i3-msg gaps inner current plus 5
    sleep 0.03
    i3-msg gaps inner current minus 5
end
