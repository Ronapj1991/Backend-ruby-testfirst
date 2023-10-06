class Book
# write your code here
    attr_accessor :title
    
    def title
        nocaps = ["the", "a", "an", "and", "in", "of"]
        caps = []
        
        @title.split(" ").each_with_index do |word, i| 
            if i > 0 && nocaps.include?(word)
                caps << word 
            else
                caps << word.capitalize
            end
        end
        
        @title = caps.join(" ")
    end
end