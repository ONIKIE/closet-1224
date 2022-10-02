# アプリケーション名
CLOSET

# アプリケーション概要
手持ちの洋服をカテゴリー別に写真で管理できる。  
保存したアイテムを組み合わせてコーディネートを組める。

# URL

# テスト用アカウント

# 利用方法
## アイテム追加
1. トップページのヘッダーからユーザー新規登録を行う。
2. アイテム追加ボタンから、アイテムの画像・カテゴリー を選択して保存する。

## コーディネートの保存  


# アプリケーションを作成した背景
職場の女性にヒアリングし、「洋服は好きだが、いざという時には何を着ればよいか分からない。」、「いつも似たような洋服を買ってしまう。」という課題を抱えている事が判明した。自分がどれだけの洋服を持っているのか把握できていない事が一番の原因であると考えた。
これを踏まえ、まずは手持ちの洋服を登録し管理できるアプリケーションを、さらにはコーディネートを組める機能を実装することで、多忙な毎日でもよりファッションを楽しめると思った。

# 洗い出した要件


# 実装予定の機能
現在検索機能実装中。
今後はコーディネートを組める機能に取り掛かる予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/4bc863201bd5211822f63517780b6df1.png)](https://gyazo.com/4bc863201bd5211822f63517780b6df1)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/5ecb10db31146acc019e5bde2950942a.png)](https://gyazo.com/5ecb10db31146acc019e5bde2950942a)

# 開発環境
・フロントエンド  
・バックエンド  
・インフラ
・テキストエディタ

# ローカルでの操作方法

# 工夫したポイント











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


