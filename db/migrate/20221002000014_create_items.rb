class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer    :category_id     , null: false
      t.integer    :type_id
      t.timestamps
    end
  end
end
