function update-kernel
	cd /usr/home/michael/extproj/voidxanmodK
	git pull
	cd linux-gcc
	set kernel (fd 'linux5\...-xanmod$'|select|cut -c3-18)
	set headers $kernel-headers
	set voidpkgs ~/extproj/void-packages
	echo cp -R $kernel $voidpkgs/srcpkgs
	echo cp -R $headers $voidpkgs/srcpkgs
	echo cd $voidpkgs
	echo./xbps-src pkg $kernel $headers
	echo sudo xbps-install --repository hostdir/binpkgs $kernel $headers
end
