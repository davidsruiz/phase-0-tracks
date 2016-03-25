
=begin

pseudocode

Encrypt method

counter = length of string

while counter is less than string length

newstring += string[counter].next

end


Decrypt method

"abcdefghijklmnopqrstuvwxyz"[-1]

"abcdefghijklmnopqrstuvwxyz".index(l) => #
"abcdefghijklmnopqrstuvwxyz".[# - 1] =>new l
add new l new string

=end

def encrypt(str) 
  
  counter = 0
  length = str.length
  newString = ""
  
  while counter < length
    
    currentLetter = str[counter]
    
    if currentLetter == "z"
      newString = newString + "a"
    else    
      newString = newString + currentLetter.next
    end
    
    counter += 1
  end
  
  return newString
  
end



#puts encrypt("weekend")
puts encrypt("zebra")


def decrypt(str)
  
  counter = 0
  length = str.length
  newString = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while counter < length
    
    currentLetter = str[counter]
    
    if currentLetter == "a"
      
      newString = newString + "z";
      
    else
      
      place = "abcdefghijklmnopqrstuvwxyz".index(currentLetter) 

      newPlace = place - 1

      nextLetter = "abcdefghijklmnopqrstuvwxyz"[newPlace]

      newString = newString + nextLetter;
      
    end
    
      counter += 1
    
  end
  
  return newString
  
end


puts decrypt("xfflfoe")


puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")


