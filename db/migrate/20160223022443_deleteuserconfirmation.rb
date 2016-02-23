class Deleteuserconfirmation < ActiveRecord::Migration
  def change
    remove_column :users, :userconfirmation, :string
  end
end
