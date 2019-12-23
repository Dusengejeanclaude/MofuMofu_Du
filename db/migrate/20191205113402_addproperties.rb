class Addproperties < ActiveRecord::Migration[5.0]
  def change
    add_reference :properties, :back_up, foreign_key: true
  end
end
