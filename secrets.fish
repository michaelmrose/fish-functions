function secrets
    p .env | each quote|each heroku config:set
end
