class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    drop_table :products
    create_table :products do |t|
      t.string :title
      t.text :content
      t.integer :price

      t.timestamps
    end
    add_reference :products, :user, foreign_key: true
  end
end
