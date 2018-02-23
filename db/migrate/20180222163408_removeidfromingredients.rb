class Removeidfromingredients < ActiveRecord::Migration[5.1]
  def change
    remove_column :ingredients, :cocktail_id
  end
end
