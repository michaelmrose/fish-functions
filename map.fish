function map --argument fn
      set list $argv[2..-1]
      for item in $list
          eval $fn $item
      end
end
