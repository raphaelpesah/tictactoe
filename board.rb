require "pry"

class Board
	require_relative "boardcase.rb"

	include Enumerable
	attr_accessor :@@plateau
	@@plateau = [""]

	def initialize
		BoardCase.new
	end


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