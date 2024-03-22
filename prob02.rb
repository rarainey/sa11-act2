def valid_password?(password)
    pattern =   /
                (?=[a-z|A-z|0-9]*[a-z][a-zA-z0-9]*)  # Checking if lowercased letter in password.
                (?=[a-zA-z0-9]*[A-Z][a-zA-z0-9]*)    # Checking if uppercased letter in password.
                (?=[a-zA-z0-9]*\d[a-zA-z0-9]*)       # Checking if digit in password.
                ^[a-zA-z0-9]{8,16}$                  # Checking if 8 through 16 symbols and if the entire string is a password.   
                /x                
    password.match?(pattern)
end

p valid_password?("Passw0rd")
p valid_password?("pass")