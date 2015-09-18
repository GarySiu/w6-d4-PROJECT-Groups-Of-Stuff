class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :value
      t.string :item_type
      t.integer :views

      t.timestamps null: false
    end
  end
end
