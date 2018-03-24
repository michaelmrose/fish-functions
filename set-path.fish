# Defined in /home/michael/.config/fish/buffer/set-path.fish @ line 2
function set-path
	# set javapaths /usr/lib/jvm/java-8-oracle/bin /usr/lib/jvm/java-8-oracle/db/bin /usr/lib/jvm/java-8-oracle/jre/bin/

    set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/scripts

    set mypaths /opt/bin /home/michael/bin /opt/android-sdk/platform-tools /home/michael/.cargo/bin /home/michael/extproj/imapnotify/node_modules/imapnotify/bin

    set -xg PATH $mypaths $javapaths $builtinpaths
end
