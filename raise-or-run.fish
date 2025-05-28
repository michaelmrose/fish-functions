function raise-or-run --argument-names toRun --argument-names class
    i3-msg "[class=$class]" focus; or $toRun
end
