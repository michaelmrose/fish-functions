function pwgen

function is_valid_password
    set -l password $argv[1]
    echo $password | grep -q '[a-z]' && \
    echo $password | grep -q '[A-Z]' && \
    echo $password | grep -q '[0-9]' && \
    echo $password | grep -q '[!@#$%^&*()_+\-=\[\]{}|;:,.<>?]'
end

# Function to generate a random password
function generate_password
    cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*()_+-=[]{}|;:,.<>?' | head -c 12
end

# Keep generating until a valid password is found
while true
    set PASSWORD (generate_password)
    if is_valid_password $PASSWORD
        echo "Generated Password: $PASSWORD"
        break
    end
end


end
