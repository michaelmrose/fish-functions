function secrets
    p (cat .env)|each quote|each heroku config:set
end
