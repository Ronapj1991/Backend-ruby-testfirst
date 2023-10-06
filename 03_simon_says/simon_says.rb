#write your code here
def echo(word)
    word
end

def shout(word)
   word.upcase 
end

def repeat(word, num=2)
   wordArr = Array.new(num, word)
   wordArr.join(" ")
end

def start_of_word(word, letters)
    word.slice(0..letters - 1)
end

def first_word(str)
    str.split(" ")[0]
end

def titleize(str)
    dontcap = ["and", "over", "the"]
    
    capArr = str.split(" ").map do |word|
        if word.length > 3 && !dontcap.include?(word)
            word.capitalize
        else
            word
        end
    end
    
    capArr[0].capitalize!
    
    p capArr.join(" ")
end