function set-path
	set javapaths /usr/lib/jvm/java-8-oracle/bin /usr/lib/jvm/java-8-oracle/db/bin /usr/lib/jvm/java-8-oracle/jre/bin/

    set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games

    set mypaths /opt/racket/bin /opt/i3blocks /opt/bin /opt/dmenu /opt/scala/bin /opt/vim-qt/bin /home/michael/bin /home/michael/scripts  /opt/cxoffice/bin ~/games/dustaet/ /opt/popcorntime /home/michael/proj/contrib ~/.autojump/bin /home/michael/proj/fzf/bin /usr/games/bin

    set vi3 /opt/vi3/bin

    set PATH $mypaths $javapaths $builtinpaths $vi3
end
