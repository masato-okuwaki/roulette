class AddOptionToCategories < ActiveRecord::Migration[5.2]
  def up
    change_column_null :categories, :name, false
    change_column_null :categories, :url, false
  end

  def down
    change_column_null :categories, :name, true
    change_column_null :categories, :url, true
  end
end
