def partition(arr, num)
    arr_less = []
    arr_great = []
    new_arr = []
    arr.each do |i|
        if i < num
            arr_less << i
        else
            arr_great << i
        end
    end
    new_arr << arr_less
    new_arr << arr_great
end

def merge(hash_1, hash_2)
    hash = {}
    hash_1.each { |k, v| hash[k] = v }
    hash_2.each { |k, v| hash[k] = v }
    hash 
end

def censor(sentence, arr)
    sent_arr = sentence.split(" ")
    new_sent = sent_arr.map do |word|
        if arr.include?(word.downcase)
            star_vowels(word)
        else
            word
        end
    end
    new_sent.join(" ")
end

def star_vowels(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char.downcase)
            new_word << "*"
        else
            new_word << char
        end
    end
    new_word
end

def power_of_two?(num)
    product = 1
    while product < num
        product *= 2
    end
    product == num
end


            
