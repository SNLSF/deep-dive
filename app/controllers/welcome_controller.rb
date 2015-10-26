class WelcomeController < ApplicationController

	def index
		@current_book = Book.find(3)
		@current_influencers = @current_book.influencers
		p "*" * 50
		p @current_book.title
		p @current_book.image
		p @current_book.date
		p @current_book.influencers

	end
end
