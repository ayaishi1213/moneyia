# アプリケーション名
- MoCoty

# アプリケーション概要
- 「相談し辛いお金のこと」に特化したコミュニティサイト

# URL
- デプロイ完了次第記述予定。

# テスト用アカウント

# 利用方法
- お金に関することで、相談したいこと、疑問に思っていることなど
  自由に記事を投稿できる。

# 目指した課題解決
- お金のことを学ぶのはとても大切なことだが、「お金のプロに相談するのはハードルが高い」
 「身近に相談できる人がいない」「学校では教えてくれない」という課題がある。
  誰も教えてくれなかったけど、生きていく上では大切なお金のことを
  気軽に相談できるコミュニティサイトを作ることでお金の疑問・不安を解決したい。

# バージョン
- Ruby : 2.6.5
- Rails : 6.0.0

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



