
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
    
    newString = newString + str[counter].next
    # puts newString
    
    counter += 1
  end
  
  return newString
  
end



puts encrypt("weekend")

def decrypt(str)
  
  counter = 0
  length = str.length
  newString = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  
  while counter < length
    
    currentLetter = str[counter]
    
    place = "abcdefghijklmnopqrstuvwxyz".index(currentLetter) 
    
    newPlace = place - 1
    
    nextLetter = "abcdefghijklmnopqrstuvwxyz"[newPlace]
    
    newString = newString + nextLetter;
    
    counter += 1
  end
  
  return newString
  
end


puts decrypt("xfflfoe")



