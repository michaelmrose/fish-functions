function update-kernel
	set target (pwd)
	cd /usr/home/michael/extproj/voidxanmodK
	git pull
	cd linux-gcc
	# set kernel (fd 'linux.\...-xanmod$'|cut -c3-18|select)
	if set kernel (fd 'linux(5|6)\.[0-9]{1,2}-xanmod$'| choose -f / 1| select)
		echo Preparing to install new kernel version $kernel
		if read_confirm
			set headers $kernel-headers
			set dbg $kernel-dbg
			set voidpkgs ~/extproj/void-packages
			cp -R $kernel $voidpkgs/srcpkgs
			cp -R $kernel $voidpkgs/srcpkgs
			cp -R $dbg $voidpkgs/srcpkgs
			cd $voidpkgs
			./xbps-src pkg $kernel $headers -j6
			sudo xbps-install --repository hostdir/binpkgs $kernel $headers
		end
	end
	cd "$target"
end
