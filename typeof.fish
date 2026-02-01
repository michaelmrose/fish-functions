function typeof
    if startswith / (type $argv |head -1| choose 2)
              echo file
      else
          echo fn
      end

end
