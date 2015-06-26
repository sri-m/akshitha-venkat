class RemoveGenderFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :gender, :string
  end
end
