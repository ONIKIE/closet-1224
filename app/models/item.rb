class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :type
  has_one_attached :image
  belongs_to :user
  has_many :item_tag_relations, dependent: :destroy
  has_many :tags, through: :item_tag_relations

  validates :category_id, numericality: { other_than: 1 , message: "can't be blank" }

  with_options presence: true do
    validates :image
  end

  def save_tags(savemicropost_tags)
    current_tags = self.tags.pluck(:name) unless self.tags.nil?
    old_tags = current_tags - savemicropost_tags
    new_tags = savemicropost_tags - current_tags

    old_tags.each do |old_name|
      self.tags.delete Tag.find_by(name: old_name)
    end

    new_tags.each do |new_name|
      item_tag = Tag.find_or_create_by(name: new_name)
      self.tags << item_tag
    end
  end

end
