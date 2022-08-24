function update-kernel
	cd /usr/home/michael/extproj/voidxanmodK
	git pull
	cd linux-gcc
	set kernel (fd 'linux5\...-xanmod$'|select|cut -c3-18)
	set headers $kernel-headers
	set voidpkgs ~/extproj/void-packages
	cp -R $kernel $voidpkgs/srcpkgs
	cp -R $headers $voidpkgs/srcpkgs
	cd $voidpkgs
	./xbps-src pkg $kernel $headers -j6
	sudo xbps-install --repository hostdir/binpkgs $kernel $headers
end
