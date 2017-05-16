def encrypt(word)
  word_length = word.length.to_i
  new_word = ""

  word_length.times do |i|
    new_letter = word[i].next
    if new_letter == "aa"
      new_letter = "a"
    end
    new_word << new_letter
  end
  new_word
end

def decrypt(word)
  word_length = word.length.to_i
  new_word = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  word_length.times do |i|
    letter = word[i]
    result = alphabet.index(letter)
    new_word << alphabet[result - 1]
  end
  new_word
end

# puts encrypt("abc") #should return "bcd"
# puts encrypt("zed") #should return "afe"
# puts decrypt("bcd") #should return "abc"
# puts decrypt("afe") #should return "zed"


# puts decrypt(encrypt("swordfish"))
# puts encrypt(decrypt("txpsegjti"))


valid_input = false

until valid_input do
  puts "Type D to decrypt a password. Type E to encrypt a password."
  opporation = gets.chomp


  if opporation == "D" || opporation == "d"
    puts "Enter password for decryption."
    decrypt(gets.chomp)
    valid_input = true
  elsif opporation == "E" || opporation == "e"
    puts "Enter password encryption."
    encrypt(gets.chomp)
    valid_input = true
  else
    valid_input = false
  end
end