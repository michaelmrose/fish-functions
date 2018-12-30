# Defined in /home/michael/.config/fish/buffer/set-path.fish @ line 2
function set-path
	set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/scripts

    set mypaths /opt/bin /home/michael/bin /opt/android-sdk/platform-tools /home/michael/.cargo/bin /home/michael/extproj/imapnotify/node_modules/imapnotify/bin /home/michael/.gem/ruby/2.5.0/bin /usr/bin/vendor_perl /home/michael/extproj/fish-shell/build

    set -xg PATH $mypaths $javapaths $builtinpaths
end
