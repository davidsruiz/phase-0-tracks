# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


"iNvEsTiGaTiOn".swapcase
# => "InVeStIgAtIoN"

"zom".insert(2, "o")
# => "zoom"

"enhance".center(15)
#=> "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("the usual")
#=> "the usual suspects"

"The case of the disappearing last letter".slice!(0..-2)
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!(1..-1)
# => "he mystery of the missing first letter"

"Elementary  ,    my   dear      Watson!".gsub(/\s+/, '')
# => "Elementary, my dear Watson!"

"z".ord

# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# Answer: Returns the corresponding ASCII value for the character


"How many times does the letter ‘a’ appear in this string?".scan("a").length
#=> 4

