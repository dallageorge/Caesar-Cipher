def caesar_chipher(stringin, num)
  
  num = num%26
  strarray=stringin.split('')
  strarray.each_with_index do|character,i|
      charnumber = character.ord
      if charnumber.between?(65,90)
        if charnumber+num >90
          strarray[i] =(64+charnumber+num-90).chr
        else strarray[i] = (charnumber + num).chr
        end #if
      elsif charnumber.between?(97,122)
        if (charnumber+num) >122
          strarray[i] =(96+charnumber+num-122).chr
        else strarray[i] = (charnumber + num).chr
        end #if
      end #if
  end #each_with_index
    
    return strarray.join("")
end #method


puts "Give a string:"
phrase = gets
puts "Give an integer:"
number= gets.to_i
puts caesar_chipher(phrase,number)
