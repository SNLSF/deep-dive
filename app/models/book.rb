class Book < ActiveRecord::Base
	has_and_belongs_to_many :influencers
	has_many :quotes
end
