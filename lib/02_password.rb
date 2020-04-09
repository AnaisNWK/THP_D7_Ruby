def signup 
	puts "Hey, peux-tu définir ton mot de passe stp ?"
	print "> "
	password = gets.chomp 
end 


def login(signup) 
logpassword = ""
	while logpassword != signup
			puts "C'est quoi encore ton mot de passe ?"
			print "> "
			logpassword = gets.chomp
	end
end 


def welcome_screen 
	puts "Bienvenue dans ta zone secrète ! Tu vas maintenant connaître tous les mystères de Ruby ! Mouahahaha"
end 

def perform 
	login(signup)
	welcome_screen
end

perform
