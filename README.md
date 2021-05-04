## テーブル設計

## usersテーブル

| Column             | Type    | Options     |
| ----------------   |-------- | ----------- |
| email         　　　| string  | null: false |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| occupation         | text    | null: false |
| birthday           | date    | null: false | 

### Association
- has_many  :posts
- has_many  :comments


## postsテーブル
| Column        | Type       | Options                       |
| ------------- |----------- | ----------------------------- |
| category_id      | integer    | null: false                   | #Active hash使う
| title         | string     | null: false                   |
| article       | text       | null: false                   |
| user          | references | null: false,foreign_key: true |

## Association
- belongs_to :user
- has_many  :comments


## commentsテーブル
| Column                 | Type       | Options                       |
| ---------------------- | ---------- | ----------------------------- |
| user                   | references | null: false,foreign_key: true |
| post                   | references | null: false,foreign_key: true |
| text                   | text       | null: false                   |

## Association
- belongs_to :user
- belongs_to :post

## comment_repliesテーブル
| Column                 | Type       | Options                       |
| ---------------------- | ---------- | ----------------------------- |
| user                   | references | null: false,foreign_key: true |
| post                   | references | null: false,foreign_key: true |
| comment                | references | null: false,foreign_key: true |
| text                   | text       | null: false                   |

## Association
- belongs_to :user
- belongs_to :post
- belongs_to :comment