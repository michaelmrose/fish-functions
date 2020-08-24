# Defined in /usr/home/michael/.config/fish/buffer/set-path.fish @ line 2
function set-path
  #   set builtinpaths /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/scripts

  # set mypaths /opt/bin /home/michael/bin /opt/android-sdk/platform-tools /home/michael/.cargo/bin /home/michael/extproj/imapnotify/node_modules/imapnotify/bin /home/michael/.gem/ruby/2.5.0/bin /usr/bin/vendor_perl /opt/android-sdk/tools/bin/ $GERBIL_HOME/bin /home/michael/.local/bin

  set builtinpaths  /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin

  set mypaths /usr/home/michael/.cargo/bin /usr/home/michael/.local/bin /usr/home/michael/scripts /usr/home/michael/bin 

  set -xg PATH $mypaths  $builtinpaths
end
