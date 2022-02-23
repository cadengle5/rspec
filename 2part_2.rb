def palindrome?(str)
    reverse_str = ""
    i = str.length - 1
    while i >= 0
        reverse_str << str[i]
        i -= 1
    end
    reverse_str == str
end

def substrings(str)
    arr = []
    (0...str.length).each do |start_idx|
        (start_idx...str.length).each do |end_idx|
            arr << str[start_idx..end_idx]
        end
    end
    arr
end
        
def palindrome_substrings(str)
    new_arr = []
    arr = substrings(str)
    arr.each do |ele|
        if ele.length > 1
            if palindrome?(ele) == true
                new_arr << ele
            end
        end
    end
    new_arr
end



