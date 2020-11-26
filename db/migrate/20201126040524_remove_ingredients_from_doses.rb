class RemoveIngredientsFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :ingredients_id
    remove_column :doses, :cocktails_id
  end

  def change
    add_reference :doses, :ingredient, null: false, foreign_key: true
    add_reference :doses, :cocktail, null: false, foreign_key: true
  end
end
