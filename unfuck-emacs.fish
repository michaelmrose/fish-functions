function unfuck-emacs
    i3-msg fullscreen enable
    sleep 0.2
    emf e unfuck-emacs-tab-bar-display
    i3-msg fullscreen disable
end
