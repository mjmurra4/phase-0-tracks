#Encrypt 
#    Method Encrypt
#        Ask user for input 
#            Figure out how many indexes the string has
#            Use .next to change the letters forward one place.
# =>        Use gsub! to correct the edge cases of " " and "z"
#        Until all indexes are changed run Encrypt
#    End



def encrypt(password)
    index = 0
    while index < password.length
        password[index] = password[index].next!
        index += 1
    end
    password.gsub!("!", " ")
    password.gsub!("ab", "a")
    p password
end

#Decrypt
# => Method Decrypt
# =>   Call password after change
# =>   Go through each index and revert to original password using alphabet formula 
# =>   Print decrypted password

    #def decrypt
    #    index = 0
    #    while index < password.length
    #        decrypt_pass[index] = password[index].cipher!
    #        index += 1 
    #    end
        #puts password
    #    puts decrypt_pass
    #end     
def decrypt(password)
    index = 0 
    alphabet = " abcdefghijklmnopqrstuvwxyz "

    while index < password.length
    	if password[index] != "a"
        	password[index] = alphabet[(alphabet.index(password[index]) -1 )]
        	index += 1
        elsif password[index] == "a"
        	password[index] = "z"
        	index += 1
        end
    
        
    end

    p password

    #puts encrypt
end

puts "Please enter a password: "
password = gets.chomp
puts "Do you want to encrypt or decrypt this password?"
option = gets.chomp
option = option.downcase
    if option == "encrypt"
        puts "Your encrypted password is now #{encrypt(password)}"
    else option == "decrypt"
        puts "Your decrypted password is now #{decrypt(password)}"
    end