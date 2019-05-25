class AddIndexUniqueToCategories < ActiveRecord::Migration[5.2]
  def change
    add_index :categories, :name, unique: true
    add_index :categories, :url, unique: true
  end
end
