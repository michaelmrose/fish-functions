function unfuck-emacs
    i3-msg floating enable
    sleep 0.2
    emf e unfuck-emacs-tab-bar-display
    i3-msg floating disable
end
