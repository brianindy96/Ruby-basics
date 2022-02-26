def caesar_cipher(string, number)
    alphabets = ('a'..'z').to_a
    accu = ""

    string.each_char do |letter|
        #if the letter equals space, then add space to the accumulator
        if !alphabets.include?(letter.downcase)
            accu += letter
            next
        else
            index = alphabets.index(letter.downcase)
            # Module Opeartor %: takes care of the looping around the alphabets array one more time
            new_index = (index + number)  % alphabets.count
            accu += letter.upcase == letter ? alphabets[new_index].upcase : alphabets[new_index]
        end
        #return accu with all the shift adjustments
    end
    
    accu
end

p caesar_cipher("What a string!", 5)

alphabets = ('a'..'z').to_a

index = alphabets.find_index(2)

# #List the numbers of alphabets

# alphabets = ('a'..'z').to_a
# numbers = ('0'..'9') 
# accu = ""   #initial value of the array
