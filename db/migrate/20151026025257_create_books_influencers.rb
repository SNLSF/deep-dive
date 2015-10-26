class CreateBooksInfluencers < ActiveRecord::Migration
  def change
    create_table :books_influencers do |t|
	      t.belongs_to :book, index: true
	      t.belongs_to :influencer, index: true
    end
  end
end