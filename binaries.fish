function binaries
    for path in $PATH
    p (ls $path) |sort -u
  end
end
