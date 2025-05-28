function raise-or-run --argument-names class --argument-names toRun
    i3-msg "[class=$class]" focus; or $toRun
end
