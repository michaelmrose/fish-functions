# Defined in /home/michael/.config/fish/buffer/set-java.fish @ line 1
function set-java
	archlinux-java status|n l2-10 t|select|each s archlinux-java set
    echo java is now (archlinux-java get)
end
