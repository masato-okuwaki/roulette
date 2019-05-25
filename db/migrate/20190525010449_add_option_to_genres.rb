class AddOptionToGenres < ActiveRecord::Migration[5.2]
  def up
    change_column_null :genres, :name, false
  end

  def down
    change_column_null :genres, :name, true
  end

end
