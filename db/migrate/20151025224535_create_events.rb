class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :date
    	t.string :location
    	t.text :description

      t.timestamps null: false
    end
  end
end
