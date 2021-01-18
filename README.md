# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| comment  | text   | null: false |

### Association

- has_many :images
- has_many :comments

## images テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| title    | string     | null: false                    |
| name     | string     | null: false                    |
| brand    | integer    | null: false                    |
| age      | integer    | null: false                    |
| gender   | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| text     | string     |                                |
| user     | references | null :false, foreign_key: true |
| image    | references | null :false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :image