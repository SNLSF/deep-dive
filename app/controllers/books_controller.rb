class BooksController < ApplicationController

	def show
		@book = Book.find(params[:id])
		@influencers = @book.influencers
		p @influencers
	end

end
