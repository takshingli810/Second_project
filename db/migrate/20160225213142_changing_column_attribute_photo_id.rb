class ChangingColumnAttributePhotoId < ActiveRecord::Migration
  def change
    change_column :groups, :picture_id, :integer
  end
end
