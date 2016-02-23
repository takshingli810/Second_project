class AddColumnToUser < ActiveRecord::Migration
  def change
  add_column :users, :userconfirmation, :string
  end
end
