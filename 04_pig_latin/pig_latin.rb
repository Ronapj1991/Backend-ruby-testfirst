#write your code here

def translate(str)
    vowels = ['a', 'e', 'i', 'o', 'u']
    phoneme3 = ["squ"]
    phoneme2 = ["qu", "th"]
    
    wordArr = str.split(" ")
    
    wordArr.map do |word|
        if vowels.include?(word[0])
            word.concat("ay")
        elsif (!vowels.include?(word[0]) && 
              !vowels.include?(word[1]) &&
              !vowels.include?(word[2])) ||
              phoneme3.include?(word.slice(0..2))
            word.slice(3..word.length - 1).concat("#{word[0..2] + "ay"}")
        elsif (!vowels.include?(word[0]) &&
              !vowels.include?(word[1])) ||
              phoneme2.include?(word.slice(0..1))
            word.slice(2..word.length - 1).concat("#{word[0..1] + "ay"}")
        else
            word.slice(1..word.length - 1).concat("#{word[0] + "ay"}")
        end
    end
    .join(" ")
end

p translate("the quick brown fox")

        