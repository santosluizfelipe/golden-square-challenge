def sentence_checker(str)
    str[0].upcase == str[0] && str[-1] == "." || str[-1] == "?" || str[-1] == "!"
end