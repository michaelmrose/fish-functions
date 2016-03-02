function set-path
	set javapaths /usr/lib/jvm/java-8-oracle/bin /usr/lib/jvm/java-8-oracle/db/bin /usr/lib/jvm/java-8-oracle/jre/bin/

    set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games

    set mypaths /opt/racket/bin /opt/i3blocks /opt/bin /home/michael/bin /home/michael/scripts  /opt/cxoffice/bin /home/michael/proj/contrib ~/.autojump/bin /usr/games/bin


    set PATH $mypaths $javapaths $builtinpaths
end
