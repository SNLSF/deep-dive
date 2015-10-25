class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
    	t.string :name
    	t.boolean :author
    	t.string :image

      t.timestamps null: false
    end
  end
end
