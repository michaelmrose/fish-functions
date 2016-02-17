function rebuild-kernel
	set com s genkernel all --install --zfs --no-clean --no-mountboot --gconfig $argv --callback=\"emerge spl zfs-kmod zfs g15daemon nvidia-drivers libg15 libg15render solaar\"
    echo command is $com
    countdown 10
    eval $com
end
