def translate(word)
  starts_vowel = false
  vowels = ["a","e","i","o","u"]
  
  text = word.split("")
  vowels.each do |letter|
    if text[0] == letter
      starts_vowel = true
    end
  end

  word+"ay" if starts_vowel

  
end