require 'pry'
class BoardCase 
	attr_accessor :valeur, :numero_case

	def initialize(valeur, numero_case)
		@valeur = valeur
		@numero_case = numero_case
	end

	def to_s
		@valeur.to_s
	end
<<<<<<< HEAD


end
=======
#Yo
#Yo
#Hello
end



=begin

	def renseigne_etat
   		if etat = "empty"
   			puts "la case est vide"
   		elsif etat = "X"
   			puts "il y a une croix à cette case"
   		else etat = "O"
   			puts "il y a un rond à cette case"
   		end
		state = nil
		print
	end

=end
>>>>>>> bcc812aa515c3501b168a567a7cc631ed7a62d69
