# Release 2 - Creation of two methods: encrypt and decrypt

def encrypt(word)
  counter = 0
  # initiate a word that will get appended with each iteration of a while loop
  resultingWord = ""
  print "Encrypted word: "
  # loop over string's letters
  while counter < word.length
    # create a special treatment for a "z" in the string
    if word[counter] == "z"
      print "a"
      resultingWord += "a"
    # ensure that spaces don't get encrypted
    elsif word[counter] == " "
      print " "
      resultingWord += " "
    # print the letter
    else print word[counter].next
      resultingWord += word[counter].next
    end
    counter += 1
  end
  puts ""
  return resultingWord
end

def decrypt(crypt)
  counter = 0
  # create a string representing the alphabet
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  print "Decrypted word: "
  # loop over string's letters
  while counter < crypt.length
    # letter represents the current letter
    letter = crypt[counter]
    # result represents the index of that current letter in the alphabet string
    result = alphabet.index(letter)
    # print the previous letter (to that current letter) in the alphabet string
    print alphabet[result - 1]
    counter += 1
  end
  puts ""
end

# OUR DRIVER CODE

# Release 3 - Test the general functionality of the encrypt and decrypt methods

puts "Release 3 - Test the general functionality of the encrypt and decrypt methods."
puts ""

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
puts ""

# Release 4 - The word "swordfish" gets passes as an argument to the encrypt method. The encrypt method has an explicit return value
# which gets passed as an argument to the decrypt method for decryption

puts "Release 4 - The word swordfish first gets encrypted and then decrypted back."
puts ""

decrypt(encrypt("swordfish"))
puts ""

# Release 5 - A user interface that allows the user to choose whether they want to encrypt or decrypt a word, and then user inputs the word

puts "Release 5 - A user interface for encrypting and decrypting words"
puts ""

print "What would you like to do, encrypt or decrypt a password? "
choice = gets.chomp
puts ""
print "Please type in your password: "
password = gets.chomp
if (choice == "encrypt")
  encrypt(password)
elsif (choice == "decrypt")
  decrypt(password)
end

























