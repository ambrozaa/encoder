require 'digest'


puts "Введите слово или фразу для шифрования:"
user_input = STDIN.gets.chomp.to_s
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
user_number = STDIN.gets.chomp.to_i

puts "Вот что получилось:"
if user_number == 1
  puts Digest::MD5.hexdigest(user_input)
else
  puts Digest::SHA1.hexdigest(user_input)
end