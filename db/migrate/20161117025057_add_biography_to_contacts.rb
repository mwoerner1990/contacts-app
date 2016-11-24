class AddBiographyToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :biography, :text
  end
end
