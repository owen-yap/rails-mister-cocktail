class RemoveUrlFromCocktail < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :url, :string
  end
end
