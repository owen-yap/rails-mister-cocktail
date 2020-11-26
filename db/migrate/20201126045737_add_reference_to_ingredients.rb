class AddReferenceToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :cocktail, null: false, foreign_key: true
  end
end
