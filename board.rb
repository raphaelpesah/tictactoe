require "pry"

class Board
	require_relative "boardcase.rb"
	include Enumerable
	attr_accessor :tableau
	@tableau = [""]

	def initialize
		caseHG = BoardCase.new(1,2)
	end

	@tableau = ["caseHG"] 


	def to_s
	end

	def play
	end

	def victory?
	end

end

binding pry

tableau1 = Board.new