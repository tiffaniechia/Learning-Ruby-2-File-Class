#challenge 3
puts "What is happening"
@ask_for_input = gets.chomp
puts "#{@ask_for_input}"

puts "Please enter 'save' to save your input to the file"
puts "Please enter 'read' to read content of the file"
puts "Please enter 'introspect' to print the program on your screen"


option_input = gets.chomp.downcase


if option_input == 'save'
	File.open("hellofromruby.txt", "w") {|file|file.puts ("#{@ask_for_input}")}	
end

if option_input == 'read'
	File.open("hellofromruby.txt", "r") {|file| puts file.read}
end

if option_input == 'introspect'
	i =0
	File.open(File.basename(__FILE__), "r").each do |line|
		puts "#{i+=1} #{line}"
	end
end



