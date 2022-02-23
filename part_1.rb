def average(num1, num2)
    (num1 + num2) / 2.0
end

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end

def repeat(string, num)
    new_str = ""
    new_str << string * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
    words = sentence.split(" ")
    new_words = words.map.with_index do |word, idx|
        if idx.even?
            word.upcase
        else
            word.downcase
        end
    end
    new_words.join(" ")
end
    

