# Defined in /home/michael/.config/fish/buffer/publish-function.fish @ line 2
function publish-function
	switch (hostname)
      case michael-laptop
          set dest desktop
        case michael-desktop
            set dest laptop
    end
    echo scp ~/.config/fish/functions/$argv.fish $dest:/home/michael/.config/fish/functions/
end
