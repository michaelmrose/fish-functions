# Defined in /home/michael/.config/fish/buffer/agenda-to-html.fish @ line 1
function agenda-to-html
    emacs -Q --batch --load ~/.emacs.d/elpa/htmlize-20191111.2130/htmlize.el --load ~/.emacs.d/michael/agenda-to-html.el
end
