require 'pry'
class BoardCase 
	attr_accessor :valeur, :numero_case

	def initialize(value, number)
		@valeur = value
		@numero_case = number
	end

	def to_s
		@valeur.to_s
	end
#Yo
#Yo
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