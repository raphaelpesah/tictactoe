require "pry"
#coucou
class Board
	require_relative "boardcase.rb"

	include Enumerable
	attr_accessor :@@plateau
	@@plateau = [""]

	def initialize
		BoardCase.new
	end

<<<<<<< HEAD
=======
	@tableau = ["caseHG"] 
#Yo
#ok
#Yo
>>>>>>> bcc812aa515c3501b168a567a7cc631ed7a62d69

	def to_s
		p @@plateau
	end

	def play

	end

	def victory?
	end

end

binding pry

tableau1 = Board.new