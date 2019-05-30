class CreateGenresCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :genres_categories do |t|
      t.references :genre, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
