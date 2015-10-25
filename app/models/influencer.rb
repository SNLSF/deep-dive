class Influencer < ActiveRecord::Base
	has_many :quotes
	has_many :authorships
	has_many :books, through: :authorships
end
