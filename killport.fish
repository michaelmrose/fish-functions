function killport
    s netstat -ltnp | grep -E :$argv|choose 6|choose -f / 0 | each kill -9
end
