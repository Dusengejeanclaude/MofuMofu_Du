class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|

      t.string :property
      t.string :rent
      t.string :adress
      t.integer :building_age
      t.text :remarks
      t.string :name_of_railway_line
      t.string :statation_name
      t.integer :how_many_minutes_walks
      t.string :name_of_railway_line1
      t.string :statation_name1
      t.integer :how_many_minutes_walks1
      t.timestamps
    end
  end
end
