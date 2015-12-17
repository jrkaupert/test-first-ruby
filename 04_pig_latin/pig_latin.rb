def word_split(phrase)
  text = phrase.split(" ")
  return text
end

def translate(phrase)
  text_arr = word_split(phrase)
  new_word = ""

  vowels = ["a","e","i","o","u","y"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","qu","r","s","t","v","w","x","z"]
  capital_letters = ("A".."Z").to_a
  
  text_arr.each do |word|    
    starts_vowel = false
    starts_consonant_0 = false
    starts_consonant_1 = false
    starts_consonant_2 = false
    starts_qu = false
    qu_1_2 = false
    qu_2_3 = false
    mod_word = ""
    recap = false

    #check for capitals
    capital_letters.each do |letter|  
      
      if word[0] == letter

        recap = true
        word = word.downcase
      end
    end
    #check vowels

    vowels.each do |letter|
      if word[0] == letter
        starts_vowel = true
        mod_word = word
      end
    end

    #check consonants
    unless starts_vowel 
      if word[0..1] == 'qu'
        starts_qu = true
      elsif word[1..2] == "qu"
        qu_1_2 = true
      else
        consonants.each do |letter|
          if word[0] == letter
            starts_consonant_0 = true
          end
          if word[1] == letter
            starts_consonant_1 = true
          end
          if word[2] == letter
            starts_consonant_2 = true
          end
        end
      end
      if starts_qu
        mod_word = word[2..-1]+word[0..1]
      elsif qu_1_2
        mod_word = word[3..-1]+word[0..2]
      elsif starts_consonant_2 && starts_consonant_1 && starts_consonant_0
        mod_word = word[3..-1]+word[0..2]
      elsif starts_consonant_1 && starts_consonant_0
        mod_word = word[2..-1]+word[0..1]
      elsif starts_consonant_0
        mod_word = word[1..-1]+word[0]  
      end
      
    end
    
    if recap
      mod_word = mod_word.capitalize
    end

    if text_arr.size > 1 
      new_word += " " + mod_word + "ay"
    else
      new_word += mod_word + "ay"
    end
  end
  
  # word.slice(1,0)+text[0]+"ay" if starts_cons1
  
  
 
 return new_word.lstrip
end

# print translate("apple")
# print translate("the Quick brown Fox")