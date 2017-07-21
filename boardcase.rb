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


end