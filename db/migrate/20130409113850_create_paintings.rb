class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
    	t.string :name
    	t.text :description
    	t.datetime :datepicker

      t.timestamps
    end
  end
end
