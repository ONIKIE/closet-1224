# テーブル設計
## usersテーブル

| Column             | Type       | Options                |
| ------------------ | ---------- | ---------------------- |
| email              | string     | null:false, unique:true|
| encrypted_password | string     | null:false             |
| nickname           | string     | null:false             |


### Association
- has_many :items


# itemsテーブル

| Column             | Type        | Options                      | 
| ------------------ | ----------  | ---------------------------- |
| category_id        | integer     | null:false                   |
| type_id            | integer     |                              |
| user               | references  | null:false, foreign_key:true |

### Association
- belongs_to :user