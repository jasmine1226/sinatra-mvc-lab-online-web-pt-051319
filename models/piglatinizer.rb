class PigLatinizer
    attr_reader :text

    def piglatinize(text)
        words = text.split(" ")
        output = []
        words.each do |word|
            consonant_check = false            
            word.split("").each do |c|                
                if c.match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
                  word += word[0]
                  word.slice!(0)
                  consonant_check = true
                elsif c.match(/[aeiouAEIOU]/)
                  word += 'w' if !consonant_check
                  word += 'ay'
                  break
                end            
            end
            output << word
        end
        output.join(" ")
    end
    
end