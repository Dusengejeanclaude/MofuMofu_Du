class RemoveToProperties < ActiveRecord::Migration[5.0]
  def change
    remove_reference :properties, :back_up, foreign_key: true
  end
end
