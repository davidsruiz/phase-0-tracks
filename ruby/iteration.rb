def block_runner
  #before
  puts "I'm testing my block!"
  
  #block
  yield("pie", 3.14)
  
  #after
  puts "Block finished!"
  
end


block_runner { |first, second| puts "#{first} #{second}" }