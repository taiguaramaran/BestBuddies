class AddDescriptionToPartner < ActiveRecord::Migration[6.1]
  def change
    add_column :partners, :description, :string
  end
end
