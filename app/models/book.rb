class Book < ActiveRecord::Base
	has_many :authorships
	has_many :influencers, through: :authorships
end
