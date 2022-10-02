class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'トップス' },
    { id: 3, name: 'アウター' },
    { id: 4, name: 'パンツ' },
    { id: 5, name: 'スカート' },
    { id: 6, name: 'ワンピース' },
    { id: 7, name: 'バッグ' },
    { id: 8, name: 'シューズ' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :items
  end