class Influencer < ActiveRecord::Base
	has_many :quotes
	has_and_belongs_to_many :books
end
