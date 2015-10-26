class WelcomeController < ApplicationController

	def index
		@current_book = Book.find(12)
		@current_influencers = @current_book.influencers
		@books = Book.all
		@influencers = Influencer.all
	end
end
