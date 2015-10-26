class WelcomeController < ApplicationController

	def index
		@currently_reading = Authorship.find(1)
		@current_book = Book.find(@currently_reading.book_id)
		@current_influencers = Influencer.find(@currently_reading.influencer_id)
	end
end
