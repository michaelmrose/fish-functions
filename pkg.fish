function pkg
	#a wrapper for gentoo package tools
	if contains $argv[1] (equery-fns) (equery-short-fns)
    equery $argv
    return 0
  end
  switch $argv[1]
    case i
      sudo emerge $argv[2..-1]
      shutitdown
    case p
      emerge $argv[2..-1] --pretend
    case r
      sudo emerge -C $argv[2..-1]
      shutitdown
    case pick 
      pick-package $argv[2..-1]
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
      sudo emerge --sync
    case status
      em-status
    case updateworld
        echo sudo emerge -auDN @world --keep-going=y --with-bdeps=y --backtrack=300 --complete-graph --alert (vals 2..-1 $argv)
      # if test (count $argv) -gt 1
      #   sudo emerge -auDN @world --keep-going=y --with-bdeps=y --backtrack=300 --complete-graph --alert $argv[2..-1]
      # else
      #   sudo emerge -auDN @world --keep-going=y --with-bdeps=y --backtrack=300 --complete-graph --alert
      # end
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
      case version
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
