# README

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :categories
- has_many :categories, through :genres_categories

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|url|string|null: false, unique: true|

### Association
- has_many :genres
- has_many :genres, through :genres_categories

## genres_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|genre|references|foreign_key: true|
|category|references|foreign_key: true|

### Association
- belongs_to :genres
- belongs_to :categories
