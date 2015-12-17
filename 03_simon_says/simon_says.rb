def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase,number=2)
  string = ""
  while number > 1
    string += phrase + " "
    number -= 1
  end
  string += phrase
end

def start_of_word(word,n)
  word.slice(0,n)
end

def first_word(phrase)
  words = phrase.split(" ")
  words[0]
end

def titleize(phrase)
  spaces = 0
  phrase.split("").each do |letter|
    if letter == " "
      spaces = 1
    end
  end

  if spaces == 0
    phrase.capitalize
  else
    words = []
    w = phrase.split(" ")

    if w[0] == "the" || w[0] == "and" || w[0] == "or" || w[0] == "over"
      words << w[0].capitalize
      w.delete_at(0)
    end
    
    w.each do |word|
      word != "the" && word != "and" && word != "or" && word != "over" ? words << word.capitalize : words << word
    end
    
    words.join(" ")
  end
end

