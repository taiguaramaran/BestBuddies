class AddFieldToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :role, :integer, default: 0
    add_reference :users, :partner, foreign_key: true
  end
end
