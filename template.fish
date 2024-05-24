function template
    switch $argv[1]
        case version
            template $argv[2] | g '^version=' | choose -f = 1
        case '*'
            bat /usr/home/michael/extproj/void-packages/srcpkgs/{$argv}/template
    end

end
