class ChangingUserIdtoInteger < ActiveRecord::Migration
  def change
    change_column :groups, :user_id, :integer
  end
end
