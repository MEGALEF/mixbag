class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :bag, index: true

      t.timestamps
    end
  end
end