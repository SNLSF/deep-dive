class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
    	t.belongs_to :influencer, index: true
      t.belongs_to :book, index: true
      t.timestamps null: false
      
      t.timestamps null: false
    end
  end
end
