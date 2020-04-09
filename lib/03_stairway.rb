# correction 

# Construction STEP 1
# On lance un dé virtuel qui retournera en sortie un chiffre entre 1 et 6 
def roll_dice 
	return rand(6)+1
end

# Construction STEP 2
# On analyse le lancé : la méthode prend en entrée un lencé de dé (chiffre entre 1 et 6) et retoune en sortie le nombre de case à faire 
# +1 pour avancer, -1 pour reculer, 0 pour ne pas bouger 
def analyze_dice(dice)
	if dice >=5 # Si le résultat du lancé est supérieur ou égale à 5, ça retourne/avance de 1 et affiche "Vous avancez"
		puts "Vous avancez!"
		return 1
	elsif dice == 1 # Si le résultat est 1, on recule et on affiche "Vous reculez"
		puts "Vous reculez !"
		return -1
	else # Sinon rien ne se passe et on ne bouge pas
		puts "Rien ne se passe"
		return 0
	end	
end

# Construction STEP 3
# Pour afficher l'état des lieu, la méthode prend en entrée un numéro de case et affiche le message correspondant

def show_stat(num)
	puts "Vous êtes sur la marche n° #{num}" 
end

# Construction STEP 4 
# On vérifie si la partie doit se finir : si le numéro de marche est 10 alors on a gagné sinon c'est false

def is_over?(num)
	if num == 10
		return true
	else 
		return false
	end
 end 

# Construction STEP 5 
# On va lier les méthodes entre elles en créant une méthode qui va lancer les étapes au bon moment 

def play 
	puts "Bienvenue dans le jeu !!" #Message d'accueil

	step = 1 #on initialise step à 1
	show_stat(step) # on montre au joueur qu'il est sur la case 1

	
	while (!is_over?(step)) do  # tant que le num n'est pas égal à 10, la boucle continue
		# Pour que le jeu se lance, il faut taper sur entrée 
		puts "taper entrée pour jouer"
		gets.chomp
		step = step + analyze_dice(roll_dice) 
		# on créé une variable qui permet de savoir où se positionne le joueur (sur quelle cas il est).
		# la variable créée "step" : vu que la méthode analyse_dice retourne -1 0 ou +1, je peux rajouter le résultat de cette méhode à step pour faire bouger le joueur.  
		show_stat(step) #on affiche à nouveau l'état des lieux 
	end

	puts " === Vous avez gagné !=== "
end 

play

		