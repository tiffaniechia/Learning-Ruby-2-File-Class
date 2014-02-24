#challenge 3
puts "What is happening"
@ask_for_input = gets.chomp
puts "#{@ask_for_input}"
save_input

def save_input 
	file = File.open("hellofromruby.txt", "w")
	file.puts ("#{@ask_for_input}")
end

