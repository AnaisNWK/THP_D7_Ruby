def half_pyramide 

	puts "Salut, bienvenue dans ma superbe pyramide ! Combien d'étage veux-tu?"
	print "> "
	user_floor = gets.chomp.to_i
	puts "Voici la pyramide :"
	i = user_floor*2

	n = 1
	for floor in (1..user_floor)
		puts ("#" * n).rjutify(i)
		 n += 1
	end

end 


def full_pyramid

	puts "Salut, bienvenue dans ma superbe pyramide ! Combien d'étage veux-tu?"
	print "> "
	user_floor = gets.chomp.to_i
	puts "Voici la pyramide :"
	i = user_floor*2

	n = 1
	for floor in (1..user_floor)
		puts ("#" * n).center(i)
		 n += 2
	end

end 

def wtf_pyramid

	puts "Salut, bienvenue dans ma superbe pyramide ! Combien d'étage veux-tu?" (choisis un nombre impair)
	print "> "
	user_floor = gets.chomp.to_i
	puts "Voici la pyramide :"
	i = user_floor*2

	n = 1
	for floor in (1..user_floor)
		puts ("#" * n).center(i)
		 n += 2
	end

	n = 1
	for floor in (user_floor..1)
		puts ("#" * n).center(i)
		 n += 2
	end

end