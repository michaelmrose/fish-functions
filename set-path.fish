function set-path
	# set javapaths /usr/lib/jvm/java-8-oracle/bin /usr/lib/jvm/java-8-oracle/db/bin /usr/lib/jvm/java-8-oracle/jre/bin/

    set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games

    set mypaths /opt/i3gaps/bin /opt/i3blocks /opt/bin /home/michael/bin /home/michael/scripts  /opt/cxoffice/bin ~/.autojump/bin /usr/games/bin /opt/vmware/bin /home/michael/.cargo/bin /usr/share/gopreload/bin

    set -xg PATH $mypaths $javapaths $builtinpaths
end
