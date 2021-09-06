class AddFieldsToPartner < ActiveRecord::Migration[6.1]
  def change
    add_column :partners, :email, :string
    add_column :partners, :phone, :string
  end
end
