def ask_first_name
	puts "Quel est ton prénom ?"
	print "> "
	first_name = gets.chomp 
	return first_name
end

def say_hello(ask_first_name) 
	puts "Bonjour #{ask_first_name} !"
end

say_hello(ask_first_name)