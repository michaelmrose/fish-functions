function usernamegen
echo "$(shuf -n3 /usr/share/dict/words | paste -sd'-')-$(od -An -N2 -i /dev/urandom | tr -d ' ')"
end
