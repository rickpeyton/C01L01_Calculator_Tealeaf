# C01L01 Assignment: Calculator

require 'pry'

def say(message)
  puts "==> #{message}"
end

begin
  say("Enter the first number.")
  number1 = gets.chomp

  say("Enter the second number.")
  number2 = gets.chomp

  say("What would you like to do with these numbers?")
  say("Enter 1 for Addition")
  say("Enter 2 for Subtraction")
  say("Enter 3 for Multiplication")
  say("Enter 4 for Division")
  response = gets.chomp

  if response == '1'
    answer = number1.to_i + number2.to_i
    action = "+"
  elsif response == '2'
    answer = number1.to_i - number2.to_i
    action = "-"
  elsif response == '3'
    answer = number1.to_i * number2.to_i
    action = "*"
  elsif response == '4'
    answer = number1.to_f / number2.to_f
    action = "/"
  else
    puts "That is an invalid response."
    break
  end

  say("#{number1} #{action} #{number2} = #{answer}")

  say("Do you want to go again?")
  continue = gets.chomp.upcase
end while continue == 'Y'
