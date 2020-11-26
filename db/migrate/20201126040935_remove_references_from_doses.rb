class RemoveReferencesFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_reference :doses, :ingredients, null: false, foreign_key: true
    remove_reference :doses, :cocktails, null: false, foreign_key: true
  end
end
