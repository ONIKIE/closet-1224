class Type < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ニット' },
    { id: 3, name: 'カーディガン' },
    { id: 4, name: 'Tシャツ・カットソー' },
    { id: 5, name: 'スウェット' },
    { id: 6, name: 'シャツ・ブラウス' },
    { id: 7, name: 'タンクトップ・キャミソール' },
    { id: 8, name: 'コート' },
    { id: 9, name: 'ブルゾン・パーカ' },
    { id: 10, name: 'ジャケット' },
    { id: 11, name: 'ダウン' },
    { id: 12, name: 'ジーンズ' },
    { id: 13, name: 'スウェットパンツ' },
    { id: 14, name: 'ニットパンツ' },
    { id: 15, name: 'トラウザー' },
    { id: 16, name: 'カジュアルパンツ' },
    { id: 17, name: 'スニーカー' },
    { id: 18, name: 'ブーツ' },
    { id: 19, name: 'パンプス' },
    { id: 20, name: '帽子' },
    { id: 21, name: '靴下・タイツ' },
    { id: 22, name: 'マフラー・手袋' }
  ]

  include ActiveHash::Associations
  has_many :items
  end