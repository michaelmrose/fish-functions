function listening
    sudo ss -ltnp | grep -vE '127.0.0.1|::1|fe80|0.0.0.0'
end
