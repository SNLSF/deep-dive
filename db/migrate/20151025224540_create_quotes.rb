class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
    	t.text :quotation
    	t.belongs_to :book, index: true
    	
      t.timestamps null: false
    end
  end
end
