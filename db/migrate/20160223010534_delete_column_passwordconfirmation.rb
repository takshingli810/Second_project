class DeleteColumnPasswordconfirmation < ActiveRecord::Migration
  def change
    remove_column :users, :userconfirmation, :string
  end
end
