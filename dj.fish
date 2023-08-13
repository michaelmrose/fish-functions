function dj
         set prior "$PWD"
         while not test -d .git
            cd ..
         end
        fd manage.py|each dirname|each cd
        python manage.py $argv
        cd $prior
end
