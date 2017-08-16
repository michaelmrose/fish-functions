# Defined in /home/michael/.config/fish/buffer/pkg.fish @ line 2
function pkg
	#a wrapper for gentoo package tools
	if contains $argv[1] (equery-fns) (equery-short-fns)
    equery $argv
    return 0
  end
  switch $argv[1]
    case i
      sudo emerge $argv[2..-1]
    case obsolete
      eix -u --nocolor --only-names
    case p
      emerge $argv[2..-1] --pretend
    case r
      sudo emerge -C $argv[2..-1]
    case kits
      for i in /var/git/meta-repo/kits/*
        echo (cutlast / $i) : (git -C $i show-branch)
      end
      
    case pick 
      pick-package $argv[2..-1]
    case progress
      sudo genlop -tc
    case keep
      sudo emerge --noreplace $argv[2..-1]
    case etc
      sudo etc-update
    case deps
      sudo emerge --depclean -a --complete-graph --ask
    case time
      sudo genlop -t $argv[2..-1]
    case required
      sudo emerge -pv --depclean $argv[2..-1]
      equery depends $argv[2..-1]
    case ebuild
      # eval $EDITOR (equery which $argv[2])
      emc (equery which $argv[2])
    case mask-reason
      equery list -p -m $argv[2..-1]
    case search
      switch $argv[2]
        case desc
          emerge --searchdesc $argv[3..-1]
        case '*'
          emerge --search $argv[2..-1]
        end
    case s
      pkg search $argv[2..-1]
    case S
      # sudo emerge --sync
      sudo eix-sync
    case status
      em-status
    case snap
      sudo zfs snapshot tank/funtoo/root@(preferred-date)
    case updateworld
      # sudo zfs snapshot tank/funtoo/root@(preferred-date)
      sudo emerge --sync
      # sudo eix-sync
      and sudo emerge -auDNt @world --keep-going=y --with-bdeps=y --backtrack=30 --alert --ask (vals 2..-1 $argv)
      and sudo emerge @preserved-rebuild --ask
      and sudo emerge --depclean -a --complete-graph --ask
    case depends
        equery depends $argv[2..-1]
    case overlay
        addoverlay $argv[2..-1]
    case edit
      switch (count $argv)
        case 1
            nv (rfi match "pick one: " (ls /etc/portage))
        case 2
            nv /etc/portage/$argv[2..-1]
      end
      case bt
          pkg buildtime $argv[2..-1]
      case buildtime
          sudo genlop -tq $argv[2..-1]
      case pick-version
          pick-version $argv[2..-1]
      case versions
          equery y $argv[2..-1]
      case lo
          pkg listoverlay $argv[2..-1]
      case listoverlay
          eix --in-overlay $argv[2..-1]
      case addoverlay
          addoverlay $argv[2..-1]
      case installed
          eix-installed -a | grep -i $argv[2..-1]
      case '*'
          pkg search $argv
  end
end
