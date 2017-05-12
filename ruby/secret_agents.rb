def encrypt(word)
  counter = 0
  resultingWord = ""
  while counter < word.length
    if word[counter] == "z"
      print "a"
      resultingWord += "a"
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
  alphabet = "abcdefghijklmnopqrstuvwz"
  print alphabet[alphabet.index(newcrypt[counter]) - 1]
  counter = counter + 1
  print alphabet[alphabet.index(newcrypt[counter]) - 1]
  # counter = counter + 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  # counter += 1
  # print alphabet[alphabet.index(crypt[counter]) - 1]
  
  # while counter < crypt.length
  #  alphabet[alphabet.index(crypt[counter]) - 1]
  #  counter += 1
  #end
  # while counter < crypt.length
  #  letter = crypt[counter]
  #  result = alphabet.index(letter)
  #  print alphabet[result - 1]
  #  counter += 1
  # end
  puts ""
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
decrypt(encrypt("swordfish"))






















