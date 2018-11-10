# Defined in /home/michael/.config/fish/buffer/return-windowclass.fish @ line 2
function return-windowclass
	if test (count $argv -eq 1)
    set xs (explode-words $argv)
  else
    set xs $argv
  end
  switch $xs[1]
    case aurora
      set returnval Nightly
    case withtheme
        set returnval (return-windowclass $argv[3])
      case calibre
        set returnval calibre
    case qbittorrent
      set returnval qBittorrent
    case chrome
      set returnval Google-chrome
    case google-chrome
      set returnval Google-chrome
    case googlecal
      set returnval Google-chrome "^Rosenetwork.net"
    case hangouts
      set returnval Google-chrome "^Google"
    case inbox
      set returnval Google-chrome "^Inbox"
    case thunderbird-bin
      set returnval Thunderbird
    case urxvt
      set returnval URxvt
    case urxvtc
      set returnval URxvt
    case urxvtt
      set returnval URxvt
    case clem
      set returnval Clementine
    case mpv
      set returnval mpv
    case emc
      set returnval Emacs
    case emacsclient
      set returnval Emacs
    case kdesudo
      set returnval (return-windowclass $argv[2..-1])
    case lilyterm
      set returnval LilyTerm
    case nv
      set returnval LilyTerm
    case sudo
      # set returnval (return-windowclass $argv[2..-1])
      set returnval (return-windowclass $xs[2..-1])
    case books
      set returnval Zathura
    case mm
      switch $xs[2]
        case read
          set returnval Zathura
          set returnval 'Zathura|libprs500'
        case watch
          set returnval mpv
      end
        case ffs
          set returnval Firefox
        case "*"
          set returnval (capitalize $argv)
  end
  echo $returnval
end
