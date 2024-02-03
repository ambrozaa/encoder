require 'digest'


puts "Введите слово или фразу для шифрования:"
user_input = STDIN.gets.chomp.to_s
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
user_number = STDIN.gets.chomp.to_i

puts "Вот что получилось:"
case user_number
when 1
  puts Digest::MD5.hexdigest(user_input)
when 2
  puts Digest::SHA1.hexdigest(user_input)
when 3
  puts Digest::SHA2.hexdigest(user_input)
end