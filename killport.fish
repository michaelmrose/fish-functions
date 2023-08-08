function killport
s netstat -ltnp | grep :$argv|choose 6|choose -f / 0|each kill -9
end
