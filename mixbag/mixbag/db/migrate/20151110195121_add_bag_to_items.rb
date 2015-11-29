class AddBagToItems < ActiveRecord::Migration
  def change
    add_column :items, :item, :reference
  end
end
