class CreateAddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_name_to_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
