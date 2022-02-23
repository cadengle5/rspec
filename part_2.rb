
def hipsterfy(word)
    vowels = "aeiou"
    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end
        i -= 1
    end
    word
end
         
def vowel_counts(str)
    counts = Hash.new(0)
    vowels = "aeiou"
    str.downcase.each_char do |char|
        if vowels.include?(char)
            counts[char] += 1
        end
    end
    counts
end

def caesar_cipher(mess, num)
    alpha = ("a".."z").to_a
    new_mess = ""
    down_mess = mess.downcase
    down_mess.each_char do |char, i|
        if alpha.include?(char)
            old_idx = alpha.index(char)
            new_idx = old_idx + num
            new_mess += alpha[new_idx % 26]
        else
            new_mess += char
        end   
    end
    new_mess
end