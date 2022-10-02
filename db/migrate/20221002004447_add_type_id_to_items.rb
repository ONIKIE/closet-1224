class AddTypeIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :type_id, :integer
  end
end
