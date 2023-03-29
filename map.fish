function map --argument fn list
      set lst $argv[2..-1]
      for item in $lst
          $fn $item
      end
end
