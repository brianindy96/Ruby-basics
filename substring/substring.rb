dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
    #create a ne whash to put filtered variables in
    hash = {}
    #loop through the array, put in filtered variables in new hash if it contains the word or substring, then return new hash
    dictionary.each do |word|
      hash[word] = string.downcase.scan(word).length if string.include?(word)
    end
    hash
end
  
#expected results
puts (substrings('below', dictionary))
puts (substrings("Howdy partner, sit down! How's it going?", dictionary))