class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
