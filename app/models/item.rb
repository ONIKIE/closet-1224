class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :type
  has_one_attached :image
  belongs_to :user

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank" }

  with_options presence: true do
    validates :image
  end
end
