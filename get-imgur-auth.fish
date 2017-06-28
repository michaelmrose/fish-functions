function get-imgur-auth
	curl -X POST -F "client_id=c2c0832d8187e2f" \
              -F "client_secret=4481efdac8fca477c1e1bb1e3fa0edeff75f463a" \
              -F "pin=455173983c" \
              -F "grant_type=pin" https://api.imgur.com/oauth2/token
end
