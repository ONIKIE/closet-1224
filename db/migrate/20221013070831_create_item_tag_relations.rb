class CreateItemTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :item_tag_relations do |t|
      t.references :item, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
    add_index :item_tag_relations, [:item_id,:tag_id],unique: true
  end
end
